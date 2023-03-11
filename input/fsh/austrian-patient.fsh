Alias: $patient-citizenship = http://hl7.org/fhir/StructureDefinition/patient-citizenship
Alias: $patientReligion = http://fhir.hl7.at/eMedication-at/StructureDefinition/patientReligion
Alias: $austrian-address-representation = http://fhir.hl7.at/eMedication-at/StructureDefinition/austrian-address-representation
Alias: $main.zul = https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_Laendercodes

Profile: AustrianPatient
Parent: Patient
Id: austrian-patient
Title: "Austrian Patient"
Description: "FHIR Base Profile for Patient Data in Austria."
* ^version = "0.1.0"
* extension contains
    $patient-citizenship named citizenship 0..1 and
    $patientReligion named PatientReligion 0..1
* extension[citizenship].extension[code] ^sliceName = "code"
* extension[citizenship].extension[code].valueCodeableConcept 1..1
* extension[citizenship].extension[code].valueCodeableConcept from $main.zul (extensible)
* extension[citizenship].extension[code].valueCodeableConcept.coding.system = "urn:oid:1.0.3166.1.2.3" (exactly)
* extension[citizenship].extension[code].valueCodeableConcept.coding.system ^short = "OID for ISO 3166-1 alpha 3 2016"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains
    socialSecurityNumber 0..1 and
    bPK 0..* and
    localPatientId 0..1
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[socialSecurityNumber].type.coding.code 1..
* identifier[socialSecurityNumber].type.coding.code = #SS (exactly)
* identifier[socialSecurityNumber].type.coding.display = "Social Security Number" (exactly)
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].system ^short = "OID for the Social Security Number in Austria"
* identifier[socialSecurityNumber].assigner.display = "Hauptverband der österreichischen Sozialversicherungsträger" (exactly)
* identifier[bPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[bPK].type.coding.code 1..
* identifier[bPK].type.coding.code = #NI (exactly)
* identifier[bPK].type.coding.display = "National unique individual identifier" (exactly)
* identifier[bPK].system = "urn:oid:1.2.40.0.10.2.1.1.149" (exactly)
* identifier[bPK].system ^short = "OID for the bPK in Austria"
* identifier[bPK].assigner.display = "Bundesministerium für Inneres" (exactly)
* identifier[localPatientId].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[localPatientId].type.coding.code 1..
* identifier[localPatientId].type.coding.code = #PI (exactly)
* identifier[localPatientId].type.coding.display = "Patient internal identifier" (exactly)
* name 1..
* gender 1..
* address only $austrian-address-representation