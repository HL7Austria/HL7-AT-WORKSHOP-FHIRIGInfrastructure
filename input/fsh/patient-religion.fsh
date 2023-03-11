Alias: $term = https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=HL7.AT:ReligionAustria

Extension: PatientReligion
Id: patientReligion
Title: "Patient Religion"
Description: "The Religion (registered in Austria) of a Patient"
* ^version = "0.1.0"
* extension contains
    code 0..1 and
    period 0..1
* extension[code] ^short = "Religion code of the Patient"
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from $term (extensible)
* extension[code].value[x].coding.system = "urn:oid:2.16.840.1.113883.2.16.1.4.1" (exactly)
* extension[code].value[x].coding.system ^short = "OID for the HL7 AT ReligionAustria ValueSet"
* extension[period] ^short = "Time period of the Religion"
* extension[period].value[x] 1..
* extension[period].value[x] only Period