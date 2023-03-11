Profile: AustrianMedication
Parent: Medication
Id: austrian-medication
Title: "Austrian Medication"
Description: "FHIR Base Profile for Medication Data in Austria"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension.valueString = "Base.Individuals"
* ^version = "0.1.0"
* ^status = #active
* . ^short = "Medication"
* . ^definition = "Medication"
* . ^alias = "Medication"
* . ^base.path = "Medication"
* . ^base.min = 0
* . ^base.max = "*"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains pharmazentral 0..1
* code.coding[pharmazentral] ^fixedCoding.system = "urn:oid:1.2.40.0.34.4.16"
* code.coding[pharmazentral] ^fixedCoding.display = "Pharmazentralnummer"