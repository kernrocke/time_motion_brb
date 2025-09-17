version 13
clear

import delimited record_id redcap_survey_identifier hcw_debriefing_surve_v_0 enumerator_v2 healthcare_work_id_v2 health_facility_v2 health_professional_v2 health_profession_other_v2 tasks_responsibiliites_v2___1 tasks_responsibiliites_v2___2 tasks_responsibiliites_v2___3 tasks_responsibiliites_v2___4 tasks_responsibiliites_v2___5 tasks_responsibiliites_v2___6 tasks_responsibiliites_v2___7 tasks_responsibiliites_v2___8 tasks_responsibiliites_v2___9 tasks_responsibiliites_v2___10 tasks_responsibiliites_v2___11 q15_v2 other_q15_v2 q3_v2 q4_v2___1 q4_v2___2 q4_v2___3 q4_v2___4 q4_v2___5 q4_v2___6 q4_v2___7 q4_v2___8 q4_v2___9 q4_other_v2 q5_v2 the_patient_record_is_easy the_patient_record_info the_patient_record_suffi the_patient_record_provide the_information_in_the_pat i_am_satisfied_with_the_qu using_the_patient_record_r i_typically_update_patient i_can_fulfil_my_tasks_more the_patient_record_helps_r the_patient_record_facilit the_patient_record_improve q7_v2_bis the_quality_of_clinical_de communication_with_other_p transition_of_care_e_g_ref communication_with_your_pa timely_access_to_medical_r accessing_test_results prescribing_and_managing_m requesting_medical_tests q8_v2 q9_v2 q10_v2_bis age_v2 sex_v2 work_experience_v2 work_health_facility_v2 responsibilities_v2___1 responsibilities_v2___2 responsibilities_v2___3 responsibilities_v2___5 responsibilities_v2___4 other_specify_v2 observations_v2 hcw_debriefing_surve_v_1 using "DebriefSurveyTimeMot_DATA_NOHDRS_2025-09-16_0949.csv", varnames(nonames)

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


graph hbar (count), over(sex_v2) over(age_v2) asyvars stack percentages bar(1, fcolor(midblue)) bar(2, fcolor(red)) blab(bar, pos(inside) format(%9.1g)) leg(rows(1)) ytitle("Percentage (%)") ylabel(, nogrid) graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none)) title(`"Gender and Age Distribution"')

graph hbar (count), over(sex_v2) over(age_v2) asyvars stack  bar(1, fcolor(midblue)) bar(2, fcolor(red)) blab(bar, pos(center) format(%9.1g)) leg(rows(1)) ytitle("Frequency") ylabel(, nogrid) graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none)) title(`"Gender and Age Distribution"')

graph pie, over(health_professional_v2) noclockwise pie(1, color(dknavy)) pie(2, color(lavender)) pie(3, color(forest_green)) plabel(_all percent, color(white) format(%9.1g)) title(`"Healthcare Professions"') legend(on rows(1)) graphregion(fcolor(white) ifcolor(white))


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

mrgraph hbar tasks_responsibiliites_v2___1 - tasks_responsibiliites_v2___11, blab(bar, pos(outside) format(%9.1g)) width(70) stat(col)  bar(1, fcolor(midgreen)) title("Healthcare Worker Task & Responsiblities") ytitle("Percentage (%)") ylab(, nogrid) oversubopts(label(labsize(small))) xsize(10) graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none))

graph pie, over(q15_v2) noclockwise pie(1, color(dknavy)) pie(2, color(lavender)) pie(3, color(forest_green)) plabel(_all percent, color(white) format(%9.1g)) title("Work Reflecting Typical Day") legend(on rows(2)) graphregion(fcolor(white) ifcolor(white))


graph hbar (count), over(health_professional_v2) over(q3_v2, label(labsize(small))) asyvars stack  bar(1, fcolor(midblue)) bar(2, fcolor(red)) blab(bar, pos(center) format(%9.1g)) leg(rows(1)) ytitle("Frequency") ylabel(, nogrid) graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none)) title("Use of MedData by Type of Health Professional", size(medium) color(black)) xsize(10) 


label var q4_v2___1 "Patient Registration"
label var q4_v2___2 "Check Medical Records"
label var q4_v2___3 "Request Lab/Imaging Tests"
label var q4_v2___4 "Check Test Results"
label var q4_v2___5 "Prescribe Medication"
label var q4_v2___6 "Patient Referral"
label var q4_v2___7 "Patient Discharge"
label var q4_v2___8 "Other"
label var q4_v2___9 "No experience with Digital tools"

mrgraph hbar q4_v2___1 - q4_v2___9, blab(bar, pos(outside) format(%9.1g)) width(70) stat(col)  bar(1, fcolor(purple)) title("Use of Digital Tools/Systems") ytitle("Percentage (%)") ylab(, nogrid) oversubopts(label(labsize(small))) xsize(10) graphregion(fcolor(white) lcolor(none) ifcolor(white) ilcolor(none))




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
					  
* Create the stacked bar chart using catplot
#delimit;

graph hbar (count) , 
	over(response) 
	over(question, label(labsize(small))) 
		asyvars stack percent 
		bar(1, fcolor("215 25 28")) 
		bar(2, fcolor("253 174 97")) 
		bar(3, fcolor("255 255 191")) 
		bar(4, fcolor("166 217 106")) 
		bar(5, fcolor("26 150 65")) 
		blab(bar, pos(center) 
		format(%9.0f)) 
		leg(rows(1)) 
		ytitle("Percentage (%)") 
		ylabel(, nogrid) 
		graphregion(fcolor(white) lcolor(none) 
		ifcolor(white) ilcolor(none)) 
		title("Patient Record System Assessment", size(medium) color(black)) 
		xsize(10) 
	;
#delimit cr



restore
