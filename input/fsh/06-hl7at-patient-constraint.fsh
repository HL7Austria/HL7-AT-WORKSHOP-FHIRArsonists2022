
/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      Profile for Patient.
# Created by: Example Workshop
##############################################################################*/

Profile:        HL7ATPatient5
Parent:         Patient
Id:             hl7at-patient5
Title:          "HL7 ATPatient Profile 5"
Description:    "HL7 ATProfile for patient data in the app.
The HL7 ATPatient is based upon the core FHIR® Patient Resource and designed to store all information we need."

* identifier 3..*
* photo 0..0
* gender = AdministrativeGender#female (exactly)
* birthDate obeys inv1 


Invariant:    inv1
Description:  "Birthdate cannot be before today" 
Expression:   "/f:Patient/f:birthDate &lt;=current-date()"
Severity:     #error
