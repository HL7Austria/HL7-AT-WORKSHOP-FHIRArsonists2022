
/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      Profile for Patient.
# Created by: Example Workshop
##############################################################################*/

Profile:        HL7ATPatient4
Parent:         Patient
Id:             hl7at-patient4
Title:          "HL7 ATPatient Profile 4"
Description:    "HL7 ATProfile for patient data in the app.
The HL7 ATPatient is based upon the core FHIR® Patient Resource and designed to store all information we need."

* identifier 3..*
* photo 0..0
* gender = AdministrativeGender#female (exactly)