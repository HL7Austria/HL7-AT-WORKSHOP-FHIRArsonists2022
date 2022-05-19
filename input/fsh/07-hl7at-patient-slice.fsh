
/*##############################################################################
# Type:       FSH-File for an FHIR® Profile
# About:      Profile for Patient.
# Created by: Example Workshop
##############################################################################*/

Profile:        HL7ATPatient6
Parent:         Patient
Id:             hl7at-patient6
Title:          "HL7 ATPatient Profile 6"
Description:    "HL7 ATProfile for patient data in the app.
The HL7 ATPatient is based upon the core FHIR® Patient Resource and designed to store all information we need."

* identifier 3..*
* photo 0..0
* gender = AdministrativeGender#female (exactly)
* birthDate obeys inv2 

// slice the identifier
* identifier ^slicing.rules = #openAtEnd
* identifier contains svnr 1..1 
* identifier[svnr].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[svnr].type.coding.code = HL7V2#SS (exactly)
* identifier[svnr].type.coding.display = "Social Security Number" (exactly)
* identifier[svnr].system 1..1
* identifier[svnr].system = "urn:oid:1.2.40.0.10.1.4.3.1" (exactly)
* identifier[svnr].system ^short = "OID for the Social Security Number in Austria"
* identifier[svnr].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)

Invariant:    inv2
Description:  "Birthdate cannot be before today" 
Expression:   "/f:Patient/f:birthDate &lt;=current-date()"
Severity:     #error
