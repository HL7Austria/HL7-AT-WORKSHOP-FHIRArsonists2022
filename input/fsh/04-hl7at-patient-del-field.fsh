
/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      Profile for Patient.
# Created by: Example Workshop
##############################################################################*/

Profile:        HL7ATPatient3
Parent:         Patient
Id:             hl7at-patient3
Title:          "HL7 ATPatient Profile 3"
Description:    "HL7 ATProfile for patient data in the app.
The HL7 ATPatient is based upon the core FHIR® Patient Resource and designed to store all information we need."

* identifier 3..*
* photo 0..0