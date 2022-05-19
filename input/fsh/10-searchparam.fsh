 
/*##############################################################################
# Type:       FSH-File for a Search Parameter
# About:      Search Parameter for patient
# Created by: Example Workshop
##############################################################################*/
 
Instance:    SearchNationality
InstanceOf:  SearchParameter
Title:       "SearchPatientNationality"
Usage:       #definition
Description: "Search HL7 ATPatient by Nationality"
 
* url = "http://hl7.at/fhir/HL7AT/R4/SearchParameter/SearchNationality"
* base = #Patient
* name = "nationality"
* status = #active
* description = "Search HL7 ATPatient by Nationality"
* code = #nationality
* type = #string