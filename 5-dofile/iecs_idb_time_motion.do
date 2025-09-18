** HEADER -----------------------------------------------------
**  DO-FILE METADATA
    //  algorithm name          iecs_idb.do
    //  project:                IECS & IDB
    //  analysts:               Kern ROCKE
    //  date first created      17-SEP-2025
    // 	date last modified      17-SEP-2025
    //  algorithm task          Analysis of healthcare workers 
    //  status                  In progress


    ** General algorithm set-up
    version 17.0
    clear all
    macro drop _all
    set more off

    ** Initialising the STATA log and allow automatic page scrolling
    capture {
            program drop _all
    	drop _all
    	log close
    	}

    ** Set working directories: this is for DATASET and LOGFILE import and export
    ** DATASETS to encrypted SharePoint folder
    local datapath "/Users/kernrocke/Library/Mobile Documents/com~apple~CloudDocs/Github/time_motion_brb"

** HEADER -----------------------------------------------------

import delimited record_id redcap_survey_identifier hcw_debriefing_surve_v_0 enumerator_v2 healthcare_work_id_v2 health_facility_v2 health_professional_v2 health_profession_other_v2 tasks_responsibiliites_v2___1 tasks_responsibiliites_v2___2 tasks_responsibiliites_v2___3 tasks_responsibiliites_v2___4 tasks_responsibiliites_v2___5 tasks_responsibiliites_v2___6 tasks_responsibiliites_v2___7 tasks_responsibiliites_v2___8 tasks_responsibiliites_v2___9 tasks_responsibiliites_v2___10 tasks_responsibiliites_v2___11 q15_v2 other_q15_v2 q3_v2 q4_v2___1 q4_v2___2 q4_v2___3 q4_v2___4 q4_v2___5 q4_v2___6 q4_v2___7 q4_v2___8 q4_v2___9 q4_other_v2 q5_v2 the_patient_record_is_easy the_patient_record_info the_patient_record_suffi the_patient_record_provide the_information_in_the_pat i_am_satisfied_with_the_qu using_the_patient_record_r i_typically_update_patient i_can_fulfil_my_tasks_more the_patient_record_helps_r the_patient_record_facilit the_patient_record_improve q7_v2_bis the_quality_of_clinical_de communication_with_other_p transition_of_care_e_g_ref communication_with_your_pa timely_access_to_medical_r accessing_test_results prescribing_and_managing_m requesting_medical_tests q8_v2 q9_v2 q10_v2_bis age_v2 sex_v2 work_experience_v2 work_health_facility_v2 responsibilities_v2___1 responsibilities_v2___2 responsibilities_v2___3 responsibilities_v2___5 responsibilities_v2___4 other_specify_v2 observations_v2 hcw_debriefing_surve_v_1 using "`datapath'/1-input/DebriefSurveyTimeMot_DATA_NOHDRS_2025-09-16_0949.csv", varnames(nonames)

label data "DebriefSurveyTimeMot_DATA_NOHDRS_2025-09-16_0949.csv"

label define enumerator_v2_ 1 "Ashonelle Taitt" 2 "Take Linton" 3 "Mayada Chidiac" 4 "Gillian Little" 5 "Vicky Venner" 6 "Kern Rocke" 
label define health_facility_v2_ 1 "Queen Elizabeth Hospital" 2 "Branford Taitt Polyclinic" 3 "Edgar Cochrane Polyclinic" 4 "Eunice Gibson Polyclinic" 5 "Glebe Polyclinic" 6 "Maurice Byer Polyclinic" 7 "Randall Phillips Polyclinic" 8 "Six Roads Polyclinic" 9 "Winston Scott Polyclinic" 10 "St. Jospeh Polyclinic" 11 "David Thompson Health and Social Services Complex" 12 "Frederick Miller Polyclinic" 
label define health_professional_v2_ 1 "Physician" 2 "Nurse" 3 "Clerk" 4 "Other" 
label define tasks_responsibiliites_v2___1_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___2_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___3_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___4_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___5_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___6_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___7_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___8_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___9_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___10_ 0 "Unchecked" 1 "Checked" 
label define tasks_responsibiliites_v2___11_ 0 "Unchecked" 1 "Checked" 
label define q15_v2_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define q3_v2_ 1 "1. Yes, and I use it most of the time" 2 "2. Yes, and I use it some of the time" 3 "3. Yes, but I dont use it" 4 "4. No, there isnt a digital tool in place" 5 "5. I dont know" 
label define q4_v2___1_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___2_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___3_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___4_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___5_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___6_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___7_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___8_ 0 "Unchecked" 1 "Checked" 
label define q4_v2___9_ 0 "Unchecked" 1 "Checked" 
label define q5_v2_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 6 "Not applicable" 
label define the_patient_record_is_easy_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_patient_record_info_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_patient_record_suffi_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_patient_record_provide_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_information_in_the_pat_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define i_am_satisfied_with_the_qu_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define using_the_patient_record_r_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define i_typically_update_patient_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define i_can_fulfil_my_tasks_more_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_patient_record_helps_r_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_patient_record_facilit_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define the_patient_record_improve_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define q7_v2_bis_ 1 "Yes, I am aware." 2 "Yes, I have heard about it, but I dont know much." 3 "No, I am not aware." 
label define the_quality_of_clinical_de_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define communication_with_other_p_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define transition_of_care_e_g_ref_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define communication_with_your_pa_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define timely_access_to_medical_r_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define accessing_test_results_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define prescribing_and_managing_m_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define requesting_medical_tests_ 1 "Major positive impact" 2 "Positive impact" 3 "No impact" 4 "Negative impact" 5 "Major negative impact" 9 "Not applicable" 
label define q8_v2_ 1 "Strongly agree" 2 "Agree" 3 "Neutral" 4 "Disagree" 5 "Strongly disagree" 
label define age_v2_ 1 "Less than 20" 2 "20-40" 3 "41-60" 4 "More than 60" 5 "I prefer not to answer" 
label define sex_v2_ 1 "Male" 2 "Female" 3 "Other" 4 "I prefer not to answer" 
label define work_experience_v2_ 1 "Less than 1 year" 2 "1-5 years" 3 "6-10 years" 4 "More than 10 years" 
label define work_health_facility_v2_ 1 "Less than 1 year" 2 "1-5 years" 3 "6-10 years" 4 "More than 10 years" 
label define responsibilities_v2___1_ 0 "Unchecked" 1 "Checked" 
label define responsibilities_v2___2_ 0 "Unchecked" 1 "Checked" 
label define responsibilities_v2___3_ 0 "Unchecked" 1 "Checked" 
label define responsibilities_v2___5_ 0 "Unchecked" 1 "Checked" 
label define responsibilities_v2___4_ 0 "Unchecked" 1 "Checked" 
label define hcw_debriefing_surve_v_1_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 

label values enumerator_v2 enumerator_v2_
label values health_facility_v2 health_facility_v2_
label values health_professional_v2 health_professional_v2_
label values tasks_responsibiliites_v2___1 tasks_responsibiliites_v2___1_
label values tasks_responsibiliites_v2___2 tasks_responsibiliites_v2___2_
label values tasks_responsibiliites_v2___3 tasks_responsibiliites_v2___3_
label values tasks_responsibiliites_v2___4 tasks_responsibiliites_v2___4_
label values tasks_responsibiliites_v2___5 tasks_responsibiliites_v2___5_
label values tasks_responsibiliites_v2___6 tasks_responsibiliites_v2___6_
label values tasks_responsibiliites_v2___7 tasks_responsibiliites_v2___7_
label values tasks_responsibiliites_v2___8 tasks_responsibiliites_v2___8_
label values tasks_responsibiliites_v2___9 tasks_responsibiliites_v2___9_
label values tasks_responsibiliites_v2___10 tasks_responsibiliites_v2___10_
label values tasks_responsibiliites_v2___11 tasks_responsibiliites_v2___11_
label values q15_v2 q15_v2_
label values q3_v2 q3_v2_
label values q4_v2___1 q4_v2___1_
label values q4_v2___2 q4_v2___2_
label values q4_v2___3 q4_v2___3_
label values q4_v2___4 q4_v2___4_
label values q4_v2___5 q4_v2___5_
label values q4_v2___6 q4_v2___6_
label values q4_v2___7 q4_v2___7_
label values q4_v2___8 q4_v2___8_
label values q4_v2___9 q4_v2___9_
label values q5_v2 q5_v2_
label values the_patient_record_is_easy the_patient_record_is_easy_
label values the_patient_record_info the_patient_record_info_
label values the_patient_record_suffi the_patient_record_suffi_
label values the_patient_record_provide the_patient_record_provide_
label values the_information_in_the_pat the_information_in_the_pat_
label values i_am_satisfied_with_the_qu i_am_satisfied_with_the_qu_
label values using_the_patient_record_r using_the_patient_record_r_
label values i_typically_update_patient i_typically_update_patient_
label values i_can_fulfil_my_tasks_more i_can_fulfil_my_tasks_more_
label values the_patient_record_helps_r the_patient_record_helps_r_
label values the_patient_record_facilit the_patient_record_facilit_
label values the_patient_record_improve the_patient_record_improve_
label values q7_v2_bis q7_v2_bis_
label values the_quality_of_clinical_de the_quality_of_clinical_de_
label values communication_with_other_p communication_with_other_p_
label values transition_of_care_e_g_ref transition_of_care_e_g_ref_
label values communication_with_your_pa communication_with_your_pa_
label values timely_access_to_medical_r timely_access_to_medical_r_
label values accessing_test_results accessing_test_results_
label values prescribing_and_managing_m prescribing_and_managing_m_
label values requesting_medical_tests requesting_medical_tests_
label values q8_v2 q8_v2_
label values age_v2 age_v2_
label values sex_v2 sex_v2_
label values work_experience_v2 work_experience_v2_
label values work_health_facility_v2 work_health_facility_v2_
label values responsibilities_v2___1 responsibilities_v2___1_
label values responsibilities_v2___2 responsibilities_v2___2_
label values responsibilities_v2___3 responsibilities_v2___3_
label values responsibilities_v2___5 responsibilities_v2___5_
label values responsibilities_v2___4 responsibilities_v2___4_
label values hcw_debriefing_surve_v_1 hcw_debriefing_surve_v_1_



label variable record_id "Record ID"
label variable redcap_survey_identifier "Survey Identifier"
label variable hcw_debriefing_surve_v_0 "Survey Timestamp"
label variable enumerator_v2 "Enumerator"
label variable healthcare_work_id_v2 "Participant ID:"
label variable health_facility_v2 "Healthcare Center:"
label variable health_professional_v2 "Type of Health Profession"
label variable health_profession_other_v2 "Please specifiy"
label variable tasks_responsibiliites_v2___1 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Assessing and triaging incoming patients)"
label variable tasks_responsibiliites_v2___2 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Providing emergency treatment or procedures)"
label variable tasks_responsibiliites_v2___3 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Communicating with patients and families)"
label variable tasks_responsibiliites_v2___4 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Coordinating with other healthcare team members)"
label variable tasks_responsibiliites_v2___5 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Documenting patient information or clinical decisions)"
label variable tasks_responsibiliites_v2___6 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Ordering or reviewing diagnostic tests)"
label variable tasks_responsibiliites_v2___7 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Prescribing or administering medications)"
label variable tasks_responsibiliites_v2___8 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Preparing patients for transfer or discharge)"
label variable tasks_responsibiliites_v2___9 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Supervising or supporting junior staff/students)"
label variable tasks_responsibiliites_v2___10 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Managing department flow or logistics)"
label variable tasks_responsibiliites_v2___11 "Please select your task and responsibilities during the last full week of work. Please select all that apply: (choice=Others)"
label variable q15_v2 "Todays shift work reflected a typical day for me"
label variable other_q15_v2 "Please describe how today was different (e.g., more or less busy, unusual tasks, unexpected events) "
label variable q3_v2 "Currently, is there an electronic tool in place for medical records at the healthcare center (e.g. MedData)?"
label variable q4_v2___1 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Patient Registration)"
label variable q4_v2___2 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Check Medical Records)"
label variable q4_v2___3 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Request Tests (e.g. laboratory tests, imaging, etc.))"
label variable q4_v2___4 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Check Test Results)"
label variable q4_v2___5 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Prescribe Medication)"
label variable q4_v2___6 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Patient Referral)"
label variable q4_v2___7 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Patient Discharge)"
label variable q4_v2___8 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=Other)"
label variable q4_v2___9 "At the healthcare center, do you use a digital tool or system for any of the following? Please mention all options that apply. (choice=I had no experience with Digital Tools or Systems)"
label variable q4_other_v2 "Please specify"
label variable q5_v2 "I feel comfortable when using digital tools in my daily tasks:"
label variable the_patient_record_is_easy "The patient record is easy to use."
label variable the_patient_record_info "The patient record provides information that is relevant to my work."
label variable the_patient_record_suffi "The patient record provides sufficient information for patient care."
label variable the_patient_record_provide "The patient record provides up-to-date information when needed, including data from different healthcare centers."
label variable the_information_in_the_pat "The information in the patient record is easy to read and understand."
label variable i_am_satisfied_with_the_qu "I am satisfied with the quality of the information provided by the patient record."
label variable using_the_patient_record_r "Using the patient record reduces the amount of time I spend searching/asking for patient information."
label variable i_typically_update_patient "I typically update patient records after a consultation, rather than during the consultation."
label variable i_can_fulfil_my_tasks_more "I can fulfil my tasks more easily thanks to the patient record."
label variable the_patient_record_helps_r "The patient record helps reduce medical errors in patient care."
label variable the_patient_record_facilit "The patient record facilitates coordination of care between the hospital and the polyclinics."
label variable the_patient_record_improve "The patient record improves the quality of patients care."
label variable q7_v2_bis "I am aware of the digital transformation project at QEH, involving the implementation of an Electronic Health Record"
label variable the_quality_of_clinical_de "The quality of clinical decisions"
label variable communication_with_other_p "Communication with other providers"
label variable transition_of_care_e_g_ref "Transition of care (e.g., referral from polyclinics to the hospital)"
label variable communication_with_your_pa "Communication with your patients"
label variable timely_access_to_medical_r "Timely access to medical records"
label variable accessing_test_results "Accessing test results"
label variable prescribing_and_managing_m "Prescribing and managing medications"
label variable requesting_medical_tests "Requesting medical tests"
label variable q8_v2 "I think more training on digital tools would improve my comfort with using these tools. "
label variable q9_v2 "What changes or improvements would help make your work easier and more efficient at this facility?"
label variable q10_v2_bis "What improvements do you think could enhance the quality of patient care at this facility?  "
label variable age_v2 "How old are you?"
label variable sex_v2 "Gender:"
label variable work_experience_v2 "How many years of experience have you been working as a health provider?"
label variable work_health_facility_v2 "How many years have you been working at this facility?"
label variable responsibilities_v2___1 "What are your main responsibilities (Please mention all options that apply)  (choice=Direct patient care - mostly clinical)"
label variable responsibilities_v2___2 "What are your main responsibilities (Please mention all options that apply)  (choice=Direct patient care - mostly administrative)"
label variable responsibilities_v2___3 "What are your main responsibilities (Please mention all options that apply)  (choice=Administrative)"
label variable responsibilities_v2___5 "What are your main responsibilities (Please mention all options that apply)  (choice=Lab or Imaging)"
label variable responsibilities_v2___4 "What are your main responsibilities (Please mention all options that apply)  (choice=Other)"
label variable other_specify_v2 "Please specify "
label variable observations_v2 "INTERNAL NOTES FOR ENUMERATORS: Please note any relevant observations or factors affecting the responses*"
label variable hcw_debriefing_surve_v_1 "Complete?"

order record_id redcap_survey_identifier hcw_debriefing_surve_v_0 enumerator_v2 healthcare_work_id_v2 health_facility_v2 health_professional_v2 health_profession_other_v2 tasks_responsibiliites_v2___1 tasks_responsibiliites_v2___2 tasks_responsibiliites_v2___3 tasks_responsibiliites_v2___4 tasks_responsibiliites_v2___5 tasks_responsibiliites_v2___6 tasks_responsibiliites_v2___7 tasks_responsibiliites_v2___8 tasks_responsibiliites_v2___9 tasks_responsibiliites_v2___10 tasks_responsibiliites_v2___11 q15_v2 other_q15_v2 q3_v2 q4_v2___1 q4_v2___2 q4_v2___3 q4_v2___4 q4_v2___5 q4_v2___6 q4_v2___7 q4_v2___8 q4_v2___9 q4_other_v2 q5_v2 the_patient_record_is_easy the_patient_record_info the_patient_record_suffi the_patient_record_provide the_information_in_the_pat i_am_satisfied_with_the_qu using_the_patient_record_r i_typically_update_patient i_can_fulfil_my_tasks_more the_patient_record_helps_r the_patient_record_facilit the_patient_record_improve q7_v2_bis the_quality_of_clinical_de communication_with_other_p transition_of_care_e_g_ref communication_with_your_pa timely_access_to_medical_r accessing_test_results prescribing_and_managing_m requesting_medical_tests q8_v2 q9_v2 q10_v2_bis age_v2 sex_v2 work_experience_v2 work_health_facility_v2 responsibilities_v2___1 responsibilities_v2___2 responsibilities_v2___3 responsibilities_v2___5 responsibilities_v2___4 other_specify_v2 observations_v2 hcw_debriefing_surve_v_1 
set more off
describe
*-----------------------------------------------------------------------
*Table showing distribution of healthcare workers by institution

tab health_facility_v2, sort

*-----------------------------------------------------------------------
*Graph 1 - Gender and Age Distribution (Percentages)
#delimit; 
graph hbar (count), 
	over(sex_v2) over(age_v2) 
		asyvars stack percentages 
		bar(1, fcolor(midblue)) 
		bar(2, fcolor(red)) 
		blab(bar, pos(inside) format(%9.1g)) 
		leg(rows(1)) 
		ytitle("Percentage (%)") 
		ylabel(, nogrid) 
		graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none)) 
		title(`"Gender and Age Distribution"')
		name(fig1_per, replace)
		
		;
#delimit cr

graph save "`datapath'/3-output/fig1_per.png", replace
*-----------------------------------------------------------------------
*Graph 1 - Gender and Age Distribution (Frequency)
#delimit; 
graph hbar (count), 
	over(sex_v2) over(age_v2) 
	asyvars stack  
	bar(1, fcolor(midblue)) 
	bar(2, fcolor(red)) 
	blab(bar, pos(center) format(%9.1g)) leg(rows(1)) 
	ytitle("Frequency") ylabel(, nogrid) 
	graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none)) 
	title(`"Gender and Age Distribution"')
	name(fig1_count, replace)
	
	;
#delimit cr

graph save "`datapath'/3-output/fig1_count.png", replace
*-----------------------------------------------------------------------
* Graph 2 - Healthcare Professional Distribution
#delimit;
graph pie, 
	over(health_professional_v2) 
	noclockwise 
	pie(1, color(dknavy)) pie(2, color(lavender)) pie(3, color(forest_green)) 
	plabel(_all percent, color(white) format(%9.1g)) 
	title(`"Healthcare Professions"') 
	legend(on rows(1)) 
	graphregion(fcolor(white) ifcolor(white))
	name(fig2, replace)
	
	;
#delimit cr

graph save "`datapath'/3-output/fig2.png", replace
*-----------------------------------------------------------------------
*Re-labelling task and responsibiliites multi-response

label var tasks_responsibiliites_v2___1 "Assessing and triaging incoming patients"
label var tasks_responsibiliites_v2___2 "Providing emergency treatment or procedures"
label var tasks_responsibiliites_v2___3 "Communicating with patients and families"
label var tasks_responsibiliites_v2___4 "Coordinating with other healthcare team members"
label var tasks_responsibiliites_v2___5 "Documenting patient information or clinical decisions"
label var tasks_responsibiliites_v2___6 "Ordering or reviewing diagnostic tests"
label var tasks_responsibiliites_v2___7 "Prescribing or administering medications"
label var tasks_responsibiliites_v2___8 "Preparing patients for transfer or discharge"
label var tasks_responsibiliites_v2___9 "Supervising or supporting junior staff/students"
label var tasks_responsibiliites_v2___10 "Managing department flow or logistics"
label var tasks_responsibiliites_v2___11 "Others"

* Graph 3 - Distribution of Tasks and Responsiblities by Healthcare Professionals

#delimit;
mrgraph hbar tasks_responsibiliites_v2___1 - tasks_responsibiliites_v2___11, 
	blab(bar, pos(outside) format(%9.1g)) 
	width(70) stat(col)  
	bar(1, fcolor(midgreen)) 
	title("Healthcare Worker Task & Responsiblities") 
	ytitle("Percentage (%)") 
	ylab(, nogrid) 
	oversubopts(label(labsize(small))) 
	xsize(10) 
	graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none))
	name(fig3, replace)
	
	;
#delimit cr
graph save "`datapath'/3-output/fig3.png", replace

*-----------------------------------------------------------------------
* Graph 4 - Distribution of Perception of Work Reflecting a Typical Day

#delimit
graph pie, 
		over(q15_v2) 
		noclockwise 
		pie(1, color(dknavy)) 
		pie(2, color(lavender)) 
		pie(3, color(forest_green)) 
		plabel(_all percent, color(white) format(%9.1g)) 
		title("Work Reflecting Typical Day") 
		legend(on rows(2)) 
		graphregion(fcolor(white) ifcolor(white))
		name(fig4, replace)

		;
#delimit cr

graph save "`datapath'/3-output/fig4.png", replace

*-----------------------------------------------------------------------
* Graph 5 - Use of MedData by Healthcare Workers

#delimit;
graph hbar (count), 
	over(health_professional_v2) 
	over(q3_v2, label(labsize(small))) 
	asyvars stack  
	bar(1, fcolor(midblue)) 
	bar(2, fcolor(red)) 
	blab(bar, pos(center) format(%9.1g)) leg(rows(1)) 
	ytitle("Frequency") ylabel(, nogrid) 
	graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none)) 
	title("Use of MedData by Type of Health Professional", size(medium) color(black)) 
	xsize(10) 
	name(fig5, replace)
	
			;
#delimit cr

graph save "`datapath'/3-output/fig5.png", replace

*-----------------------------------------------------------------------
* Graph 6 - Use of Digital Tools/Systems

label var q4_v2___1 "Patient Registration"
label var q4_v2___2 "Check Medical Records"
label var q4_v2___3 "Request Lab/Imaging Tests"
label var q4_v2___4 "Check Test Results"
label var q4_v2___5 "Prescribe Medication"
label var q4_v2___6 "Patient Referral"
label var q4_v2___7 "Patient Discharge"
label var q4_v2___8 "Other"
label var q4_v2___9 "No experience with Digital tools"

#delimit;
mrgraph hbar q4_v2___1 - q4_v2___9, 
	blab(bar, pos(outside) format(%9.1g)) 
	width(70) stat(col)  
	bar(1, fcolor(purple)) 
	title("Use of Digital Tools/Systems") 
	ytitle("Percentage (%)") 
	ylab(, nogrid) oversubopts(label(labsize(small))) 
	xsize(10) 
	graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none))
	name(fig6, replace)
	
	;
#delimit cr	

graph save "`datapath'/3-output/fig6.png", replace

*-----------------------------------------------------------------------
*Graph 7 - Patient Record System Assessment

* Stacked Bar Chart for Patient Record Survey - Likert Scale Data
* Variables: SD D N A SA responses


* Define the variables for easier handling
local varlist "the_patient_record_is_easy the_patient_record_info the_patient_record_suffi the_patient_record_provide the_information_in_the_pat i_am_satisfied_with_the_qu using_the_patient_record_r i_typically_update_patient i_can_fulfil_my_tasks_more the_patient_record_helps_r the_patient_record_facilit the_patient_record_improve"

* Create shorter labels for the chart
local labels `" "Easy to use" "Record info" "Sufficient" "Provides" "Info in patient" "Satisfied quality" "Using record" "Update patient" "Fulfil tasks" "Helps record" "Facilitates" "Improves" "'

* Method 1: Using catplot (requires installation of catplot package)
* Install if needed: ssc install catplot

* First, reshape data to long format for analysis
preserve

local counter = 1

foreach x of varlist the_patient_record_is_easy the_patient_record_info the_patient_record_suffi the_patient_record_provide the_information_in_the_pat i_am_satisfied_with_the_qu using_the_patient_record_r i_typically_update_patient i_can_fulfil_my_tasks_more the_patient_record_helps_r the_patient_record_facilit the_patient_record_improve{
	
	rename `x' q_`counter++'
}

* Create an ID variable
gen id = _n

* Reshape the data
reshape long q_, i(id) j(question)

* Rename the reshaped variable
rename q_ response

* Clean the question variable names
label define question 1"The patient record is easy to use" ///
					  2"The patient record provides information that is relevant to my work" ///
					  3"The patient record provides sufficient information for patient care" ///
					  4"The patient record provides up-to-date information when needed, including data from different healthcare centers" ///
					  5"The information in the patient record is easy to read and understand" ///
					  6"I am satisfied with the quality of the information provided by the patient record" ///
					  7"Using the patient record reduces the amount of time I spend searching/asking for patient information" ///
					  8"I typically update patient records after a consultation, rather than during the consultation" ///
					  9"I can fulfil my tasks more easily thanks to the patient record" ///
					  10"The patient record helps reduce medical errors in patient care" ///
					  11"The patient record facilitates coordination of care between the hospital and the polyclinics" ///
					  12"The patient record improves the quality of patients' care"
					  
					  
label define question_brief ///
    1 "Easy to use" ///
    2 "Relevant information" ///
    3 "Sufficient information" ///
    4 "Up-to-date information" ///
    5 "Easy to read" ///
    6 "Quality satisfaction" ///
    7 "Reduces search time" ///
    8 "Update timing" ///
    9 "Task efficiency" ///
    10 "Reduces errors" ///
    11 "Care coordination" ///
    12 "Improves care quality"					  

label value question question_brief

recode response (1=5) (2=4) (4=2) (5=1)

label define response 1"Strongly Disagree" 2"Disagree" 3"Neutral" 4"Agree" 5"Strongly Agree"
label value response response 
					  
* Create the stacked bar chart 
#delimit;

graph hbar (count) , 
	over(response) 
	over(question, label(labsize(small))) 
		asyvars stack percent 
		bar(1, fcolor("215 25 28") lc(black)) 
		bar(2, fcolor("253 174 97") lc(black)) 
		bar(3, fcolor("255 255 191") lc(black)) 
		bar(4, fcolor("166 217 106") lc(black)) 
		bar(5, fcolor("26 150 65") lc(black)) 
		blab(bar, pos(center) 
		format(%9.0f)) 
		leg(rows(1)) 
		ytitle("Percentage (%)") 
		ylabel(, nogrid) 
		graphregion(fcolor(white) lcolor(none) 
		ifcolor(white) ilcolor(none)) 
		title("Patient Record System Assessment", size(medium) color(black)) 
		xsize(10) 
		name(fig7, replace)
	;
#delimit cr

graph save "`datapath'/3-output/fig7.png", replace

restore

*-----------------------------------------------------------------------
*Graph 8 - Awareness of Digital Transformation" "Project in QEH

#delimit;
graph pie, 
	over(q7_v2_bis) 
	noclockwise 
	pie(1, color(dknavy)) pie(2, color(lavender)) pie(3, color(forest_green)) 
	plabel(_all percent, color(white) format(%9.1g)) 
	title("Awareness of Digital Transformation" "Project in QEH") 
	legend(on rows(3) size(small) margin(zero) bexpand) 
	graphregion(fcolor(white) ifcolor(white))
	name(fig8, replace)
	;
#delimit cr	

graph save "`datapath'/3-output/fig8.png", replace

*-----------------------------------------------------------------------
*Graph 9 - Impact of Digital Transformation

* First, reshape data to long format for analysis
preserve

local counter = 1

foreach x of varlist the_quality_of_clinical_de communication_with_other_p transition_of_care_e_g_ref communication_with_your_pa timely_access_to_medical_r accessing_test_results prescribing_and_managing_m requesting_medical_tests{
	
	rename `x' q_`counter++'
}

* Create an ID variable
gen id = _n

* Reshape the data
reshape long q_, i(id) j(question)

* Rename the reshaped variable
rename q_ response

* Clean the question variable names
label define question 1"Quality of clinical decisions" ///
					  2"Communication with other providers" ///
					  3"Transition of care" ///
					  4"Communication with your patients" ///
					  5"Timely access to medical records" ///
					  6"Accessing test results" ///
					  7"Prescribing and managing medications" ///
					  8"Requesting medical tests" 
					  				  
label value question question

recode response (1=5) (2=4) (4=2) (5=1)

drop if response == 9
label define response 1"Major negative impact" 2"Negative impact" 3"No impact" 4"Positive impact" 5"Major positive impact"
label value response response 

tab response 
					  
* Create the stacked bar chart using catplot
#delimit;

graph hbar (count) , 
	over(response) 
	over(question, label(labsize(small))) 
		asyvars stack percent 
		bar(1, fcolor("215 25 28") lc(black)) 
		bar(2, fcolor("253 174 97") lc(black)) 
		bar(3, fcolor("255 255 191") lc(black)) 
		bar(4, fcolor("166 217 106") lc(black)) 
		bar(5, fcolor("26 150 65") lc(black)) 
		blab(bar, pos(center) 
		format(%9.0f)) 
		leg(rows(2) margin(zero)) 
		ytitle("Percentage (%)") 
		ylabel(, nogrid) 
		graphregion(fcolor(white) lcolor(none) 
		ifcolor(white) ilcolor(none)) 
		title("Impact of Digital Transformation", size(medium) color(black)) 
		xsize(10) 
		name(fig9, replace)
	;
#delimit cr

graph save "`datapath'/3-output/fig9.png", replace

restore
*-----------------------------------------------------------------------
* CREATE DOCUMENT WITH ALL GRAPHS USING PUTDOCX
*-----------------------------------------------------------------------

* Begin the document
putdocx begin

* Add title page
putdocx paragraph, style(Title)
putdocx text ("Healthcare Worker Survey Analysis Report")

putdocx paragraph, style(Subtitle) 
putdocx text ("Digital Transformation and Patient Records Assessment")

putdocx paragraph
putdocx text ("Date: ")
putdocx text ("`c(current_date)'"), bold

putdocx pagebreak

* Add table of contents
putdocx paragraph, style(Heading1)
putdocx text ("Table of Contents")

putdocx paragraph
putdocx text ("1. Demographics and Professional Distribution")
putdocx paragraph
putdocx text ("2. Tasks and Responsibilities")
putdocx paragraph  
putdocx text ("3. Work Environment Assessment")
putdocx paragraph
putdocx text ("4. Digital Tools Usage")
putdocx paragraph
putdocx text ("5. Patient Record System Evaluation")
putdocx paragraph
putdocx text ("6. Digital Transformation Awareness and Impact")

putdocx pagebreak

*-----------------------------------------------------------------------
* SECTION 1: DEMOGRAPHICS AND PROFESSIONAL DISTRIBUTION
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("1. Demographics and Professional Distribution")

* Add sample size information
putdocx paragraph
putdocx text ("This section presents the demographic characteristics and professional distribution of healthcare workers surveyed across various health facilities in Barbados.")

* Table showing distribution by institution
putdocx paragraph, style(Heading2)
putdocx text ("Distribution by Healthcare Facility")

* Get the actual frequencies and percentages from your data
preserve
contract health_facility_v2, freq(n) percent(pct)
gsort -n  
gen pct_rounded = round(pct, 0.01)
local num_facilities = _N

* Create table with calculated values
putdocx table facility_table = (`=`num_facilities'+1',3), 

* Add headers
putdocx table facility_table(1,1) = ("Health Facility")
putdocx table facility_table(1,2) = ("n")
putdocx table facility_table(1,3) = ("Percentage (%)")

* Add data rows dynamically 
forvalues i = 1/`num_facilities' {
    local facility_code = health_facility_v2[`i']
    local facility_name: label (health_facility_v2) `facility_code'
    local freq = n[`i']
    local percentage = pct_rounded[`i'] 
    
    putdocx table facility_table(`=`i'+1',1) = ("`facility_name'")
    putdocx table facility_table(`=`i'+1',2) = ("`freq'")
    putdocx table facility_table(`=`i'+1',3) = ("`percentage'")
}

* Style the table
putdocx table facility_table(1,.), bold
putdocx table facility_table(1,.), shading("lightgray")
putdocx table facility_table(.,.), halign(left)
putdocx table facility_table(.,2), halign(center)
putdocx table facility_table(.,3), halign(center)

restore

putdocx paragraph, style(Heading2)
putdocx text ("Gender and Age Distribution")

putdocx paragraph
putdocx text ("Figure 1 shows the distribution of survey participants by gender and age groups.")

* Export and Insert Figure 1 - Gender and Age (Percentage)
graph export "`datapath'/3-output/fig1_per.png", name(fig1_per) replace width(1200) height(800)
putdocx paragraph
putdocx image "`datapath'/3-output/fig1_per.png", width(6) height(4)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 1: Gender and Age Distribution (Percentages)")

putdocx pagebreak

* Export and Insert Figure 1 - Gender and Age (Frequency) 
graph export "`datapath'/3-output/fig1_count.png", name(fig1_count) replace width(1200) height(800)
putdocx paragraph
putdocx image "`datapath'/3-output/fig1_count.png", width(6) height(4)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 1b: Gender and Age Distribution (Frequency)")

putdocx paragraph, style(Heading2)
putdocx text ("Healthcare Professional Types")

putdocx paragraph
putdocx text ("The survey included various types of healthcare professionals working across the facilities.")

* Export and Insert Figure 2 - Healthcare Professionals
graph export "`datapath'/3-output/fig2.png", name(fig2) replace width(1200) height(800)
putdocx paragraph
putdocx image "`datapath'/3-output/fig2.png", width(6) height(4)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 2: Distribution of Healthcare Professions")

putdocx pagebreak

*-----------------------------------------------------------------------
* SECTION 2: TASKS AND RESPONSIBILITIES
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("2. Tasks and Responsibilities")

putdocx paragraph
putdocx text ("This section examines the various tasks and responsibilities undertaken by healthcare workers during their typical work week.")

* Export and Insert Figure 3 - Tasks and Responsibilities
graph export "`datapath'/3-output/fig3.png", name(fig3) replace width(1600) height(1200)
putdocx paragraph
putdocx image "`datapath'/3-output/fig3.png", width(8) height(6)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 3: Healthcare Worker Tasks & Responsibilities")

putdocx paragraph
putdocx text ("The chart above shows the percentage of healthcare workers engaged in different types of activities, highlighting the diverse nature of their roles and responsibilities.")

putdocx pagebreak

*-----------------------------------------------------------------------
* SECTION 3: WORK ENVIRONMENT ASSESSMENT
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("3. Work Environment Assessment")

putdocx paragraph, style(Heading2)
putdocx text ("Typical Work Day Reflection")

putdocx paragraph
putdocx text ("Healthcare workers were asked whether their surveyed shift reflected a typical day for them.")

* Export and Insert Figure 4 - Typical Day
graph export "`datapath'/3-output/fig4.png", name(fig4) replace width(1200) height(800)
putdocx paragraph
putdocx image "`datapath'/3-output/fig4.png", width(6) height(4)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 4: Work Reflecting Typical Day")

putdocx pagebreak

*-----------------------------------------------------------------------
* SECTION 4: DIGITAL TOOLS USAGE
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("4. Digital Tools Usage")

putdocx paragraph, style(Heading2)
putdocx text ("MedData Usage by Healthcare Professionals")

putdocx paragraph
putdocx text ("The following chart shows how different types of healthcare professionals use MedData, the electronic medical records system.")

* Export and Insert Figure 5 - MedData Usage
graph export "`datapath'/3-output/fig5.png", name(fig5) replace width(1600) height(1000)
putdocx paragraph
putdocx image "`datapath'/3-output/fig5.png", width(8) height(5)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 5: Use of MedData by Type of Health Professional")

putdocx paragraph, style(Heading2)
putdocx text ("Digital Tools and Systems Usage")

putdocx paragraph
putdocx text ("Healthcare workers utilize various digital tools and systems in their daily workflow. The chart below shows the percentage of workers using different digital functionalities.")

* Export and Insert Figure 6 - Digital Tools
graph export "`datapath'/3-output/fig6.png", name(fig6) replace width(1600) height(1200)
putdocx paragraph
putdocx image "`datapath'/3-output/fig6.png", width(8) height(6)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 6: Use of Digital Tools/Systems")

putdocx pagebreak

*-----------------------------------------------------------------------
* SECTION 5: PATIENT RECORD SYSTEM EVALUATION
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("5. Patient Record System Evaluation")

putdocx paragraph
putdocx text ("Healthcare workers provided detailed feedback on various aspects of the patient record system. The following analysis presents their perceptions across multiple dimensions of system usability and effectiveness.")

* Export and Insert Figure 7 - Patient Record Assessment
graph export "`datapath'/3-output/fig7.png", name(fig7) replace width(2000) height(1400)
putdocx paragraph
putdocx image "`datapath'/3-output/fig7.png", width(10) height(7)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 7: Patient Record System Assessment")

putdocx paragraph
putdocx text ("The stacked bar chart above shows responses to twelve different statements about the patient record system, with responses ranging from 'Strongly Disagree' to 'Strongly Agree'. This provides insight into user satisfaction and areas for potential improvement.")

putdocx pagebreak

*-----------------------------------------------------------------------
* SECTION 6: DIGITAL TRANSFORMATION AWARENESS AND IMPACT
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("6. Digital Transformation Awareness and Impact")

putdocx paragraph, style(Heading2)
putdocx text ("Awareness of Digital Transformation Project")

putdocx paragraph
putdocx text ("Healthcare workers were surveyed about their awareness of the digital transformation project at Queen Elizabeth Hospital (QEH).")

* Export and Insert Figure 8 - Digital Transformation Awareness
graph export "`datapath'/3-output/fig8.png", name(fig8) replace width(1200) height(800)
putdocx paragraph
putdocx image "`datapath'/3-output/fig8.png", width(6) height(4)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 8: Awareness of Digital Transformation Project in QEH")

putdocx paragraph, style(Heading2)
putdocx text ("Perceived Impact of Digital Transformation")

putdocx paragraph
putdocx text ("The following chart shows healthcare workers' perceptions of how digital transformation has impacted various aspects of their work and patient care.")

* Export and Insert Figure 9 - Impact Assessment
graph export "`datapath'/3-output/fig9.png", name(fig9) replace width(2000) height(1200)
putdocx paragraph
putdocx image "`datapath'/3-output/fig9.png", width(10) height(6)
putdocx paragraph, style(Subtitle)
putdocx text ("Figure 9: Impact of Digital Transformation")

putdocx paragraph
putdocx text ("This comprehensive assessment reveals the multifaceted impact of digital transformation initiatives across different domains of healthcare delivery.")

putdocx pagebreak

*-----------------------------------------------------------------------
* CONCLUSIONS AND RECOMMENDATIONS
*-----------------------------------------------------------------------

putdocx paragraph, style(Heading1)
putdocx text ("Conclusions and Key Findings")

putdocx paragraph, style(Heading2)
putdocx text ("Key Findings:")

putdocx paragraph
putdocx text ("• The survey captured responses from healthcare workers across multiple facilities")
putdocx paragraph
putdocx text ("• Healthcare workers engage in diverse tasks and responsibilities")
putdocx paragraph  
putdocx text ("• Digital tools usage varies by profession and task type")
putdocx paragraph
putdocx text ("• Patient record system shows mixed user satisfaction levels")
putdocx paragraph
putdocx text ("• Awareness of digital transformation initiatives varies among staff")
putdocx paragraph
putdocx text ("• Digital transformation impact is perceived differently across various work domains")

putdocx paragraph, style(Heading2)
putdocx text ("Recommendations:")

putdocx paragraph
putdocx text ("• Enhance training programs for digital tool utilization")
putdocx paragraph
putdocx text ("• Improve user experience design for patient record systems")
putdocx paragraph
putdocx text ("• Increase communication about digital transformation initiatives")
putdocx paragraph
putdocx text ("• Target interventions based on professional role and facility type")

* Save the document
putdocx save "Healthcare_Worker_Survey_Report.docx", replace

* Display completion message
display "Document created successfully: Healthcare_Worker_Survey_Report.docx"

