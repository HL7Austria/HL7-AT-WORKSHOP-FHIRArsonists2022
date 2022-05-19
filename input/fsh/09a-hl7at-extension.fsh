
/*##############################################################################
# Type:       FSH-File for an FHIR® Extension
# About:      Extension for Patient Nationality.
# Created by: Example Workshop
##############################################################################*/

Extension:    PatientNationality
Id:           hl7at-nationality
Title:        "HL7 ATNationality" 
Description:  "Nationality of the given patient."

* value[x] 0..0
* extension contains 
    code 0..1
* extension[code].value[x] only CodeableConcept