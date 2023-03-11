Instance: AustrianPatientExample01
InstanceOf: Patient
Usage: #example
* meta.profile = "http://hl7.at/fhir/4.0.1/eMedicationAT/StructureDefinition/austrian-patient"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security Number"
* identifier.value = "1234010100"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.assigner.display = "Hauptverband der österreichischen Sozialversicherungsträger"
* extension[0].extension.url = "code"
* extension[=].extension.valueCodeableConcept = urn:oid:2.16.840.1.113883.2.16.1.4.1#162 "Pastafarianismus"
* extension[=].url = "http://hl7.at/fhir/4.0.1/eMedicationAT/StructureDefinition/patientReligion"
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = urn:oid:1.0.3166.1.2.3#AUT "Österreich"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* name.family = "Mustermann"
* name.given = "Max"
* name.prefix = "DI"
* birthDate = "1900-01-01"
* gender = #male
* telecom[0].use = #work
* telecom[=].system = #email
* telecom[=].value = "office@hl7.at"
* telecom[+].use = #home
* telecom[=].system = #phone
* telecom[=].value = "+436501234567890"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Landstrasse"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address.line.extension[=].valueString = "Stock 9 Tür 42"
* address.use = #home
* address.type = #both
* address.line = "Landstrasse 1 Stock 9 Tür 42"
* address.city = "Linz"
* address.state = "Oberösterreich"
* address.postalCode = "4020"
* address.country = "AUT"