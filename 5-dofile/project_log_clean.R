# Required libraries
library(readr)
library(dplyr)
library(stringr)

# Custom parse function
parse_log <- function(s) {
  tryCatch({
    # Extract action
    action_match <- str_match(s, "'action':'(.*?)'")
    if (is.na(action_match[1,2])) return(NULL)
    action <- action_match[1,2]
    if (action != "MODIFY") return(NULL)
    
    # Extract record
    record_match <- str_match(s, "'record':'(.*?)'")
    record <- record_match[1,2]
    
    # Extract event
    event_match <- str_match(s, "'event':'(.*?)'")
    event <- event_match[1,2]
    
    # Extract instance
    instance_match <- str_match(s, "'instance':'(.*?)'")
    instance <- instance_match[1,2]
    
    # Extract field_name
    field_match <- str_match(s, "'field_name':'(.*?)'")
    field <- field_match[1,2]
    
    # Extract onload_val if present
    if (str_detect(s, "'onload_val':'")) {
      onload_match <- str_match(s, "'onload_val':'(.*?)'")
      onload <- onload_match[1,2]
    } else {
      onload <- NA_character_
    }
    
    # Extract modified_val
    # Find position of 'modified_val':'
    mod_pos <- str_locate(s, "'modified_val':'")[1, 2] + 1
    # Find position of ,'unique_record_id':'
    unique_pos <- str_locate(s, ",'unique_record_id':'")[1, 1]
    if (is.na(unique_pos)) {
      # If truncated, take to end
      modified_val <- substr(s, mod_pos, nchar(s))
    } else {
      modified_val <- substr(s, mod_pos, unique_pos - 1)
    }
    # Remove leading and trailing single quotes if present
    modified_val <- gsub("^'|'$", "", modified_val)
    
    # Extract unique_record_id
    unique_start <- str_locate(s, "'unique_record_id':'")[1, 2] + 1
    unique_id <- substr(s, unique_start, nchar(s))
    # Remove trailing ' if present
    unique_id <- gsub("'$", "", unique_id)
    
    list(
      action = action,
      record = record,
      event = event,
      instance = instance,
      field_name = field,
      onload_val = onload,
      modified_val = modified_val,
      unique_record_id = unique_id
    )
  }, error = function(e) {
    warning("Failed to parse: ", s, "\nError: ", e$message)
    NULL
  })
}

# Read the log file
log_df <- read_csv("1757797733323.log.csv", show_col_types = FALSE)

# Identify rows with JSON-like strings in the 'Action' column that contain 'MODIFY'
data_rows <- log_df %>%
  filter(str_detect(Action, "^\\{"), str_detect(Action, "MODIFY"))

# Parse the strings
parsed_list <- lapply(data_rows$Action, parse_log)

# Filter out NULL entries (failed parses)
parsed_list <- parsed_list[!sapply(parsed_list, is.null)]

# Combine into a data frame
if (length(parsed_list) == 0) {
  message("No valid MODIFY actions parsed.")
  df <- data.frame(record_id = character(0))
} else {
  actions_df <- bind_rows(parsed_list)
  modify_df <- actions_df
  
  # Create a nested list to store the latest values: data_list[[record]][[field]] = value
  data_list <- list()
  for (i in 1:nrow(modify_df)) {
    rec <- as.character(modify_df$record[i])
    field <- modify_df$field_name[i]
    val <- modify_df$modified_val[i]
    if (is.null(data_list[[rec]])) {
      data_list[[rec]] <- list()
    }
    data_list[[rec]][[field]] <- val
  }
  
  # Get all records and sort numerically
  records <- names(data_list)
  records <- records[order(as.numeric(records))]
  
  # Create initial data frame with record_id
  df <- data.frame(record_id = records, stringsAsFactors = FALSE)
  
  # Add all fields from the log, using NA if not present for a record
  all_fields <- unique(unlist(lapply(data_list, names)))
  for (field in all_fields) {
    df[[field]] <- sapply(records, function(r) {
      data_list[[r]][[field]] %||% NA_character_
    })
  }
}

# Read the data dictionary
dict <- read_csv("DebriefSurveyTimeMotionStudy_DataDictionary_2025-09-13.csv", show_col_types = FALSE)

# Extract variable names
vars <- dict$`Variable / Field Name`

# Identify non-checkbox and checkbox variables
non_checkbox_vars <- dict %>%
  filter(`Field Type` != "checkbox") %>%
  pull(`Variable / Field Name`)

checkbox_vars <- dict %>%
  filter(`Field Type` == "checkbox") %>%
  pull(`Variable / Field Name`)

# Build the ordered list of columns: record_id + non-checkbox + checkbox___code (in choice order)
ordered_cols <- c("record_id")
for (v in vars) {
  if (v %in% checkbox_vars) {
    choices_str <- dict %>%
      filter(`Variable / Field Name` == v) %>%
      pull(`Choices, Calculations, OR Slider Labels`)
    choices <- str_split(choices_str, "\\|")[[1]]
    codes <- sapply(choices, function(x) {
      trimws(str_split(x, ",")[[1]][1])
    })
    for (code in codes) {
      ordered_cols <- c(ordered_cols, paste0(v, "___", code))
    }
  } else {
    ordered_cols <- c(ordered_cols, v)
  }
}

# Add any missing columns to df with defaults ("" for non-checkbox, "0" for checkbox)
missing_cols <- setdiff(ordered_cols, names(df))
for (mc in missing_cols) {
  if (nrow(df) > 0) {
    if (grepl("___", mc)) {
      df[[mc]] <- rep("0", nrow(df))
    } else {
      df[[mc]] <- rep("", nrow(df))
    }
  } else {
    df[[mc]] <- character(0)
  }
}

# Fill NA in existing columns
checkbox_cols <- grep("___", names(df), value = TRUE)
non_checkbox_cols <- setdiff(names(df), c("record_id", checkbox_cols))
if (nrow(df) > 0) {
  df <- df %>%
    mutate(across(all_of(checkbox_cols), ~ ifelse(is.na(.), "0", .))) %>%
    mutate(across(all_of(non_checkbox_cols), ~ ifelse(is.na(.), "", .)))
}

# Select and order only the columns defined by the dictionary (including derived ___)
df <- df %>%
  select(all_of(ordered_cols))

# Write the clean CSV
write_csv(df, "clean_data.csv", na = "")