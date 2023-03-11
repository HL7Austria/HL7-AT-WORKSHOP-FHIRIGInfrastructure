Alias: $iso21090-ADXP-streetName = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName
Alias: $iso21090-ADXP-houseNumber = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber
Alias: $iso21090-ADXP-additionalLocator = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator

Profile: AustrianAddress
Parent: Address
Id: austrian-address-representation
Title: "Austrian Representation of an Address"
Description: "FHIR Base Profile for Address Data in Austria."
* ^version = "0.1.0"
* obeys ele-1 and at-addr-1 and at-addr-2 and at-addr-3
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* . ^constraint.source = "http://hl7.org/fhir/StructureDefinition/Element"
* line ^definition = "This component contains the street name, street number, floor and/or door number or additonal information (e.g. street direction, P.O. Box number, delivery hints, and similar address information). This information can be split into structured values in the line-components each defined by international ISO extensions. If these extensions are used then the information they contain has to be written in a concatenated way in the line element itself as well. This makes the usage easier for systems which don't use address data in a structured way."
* line.extension contains
    $iso21090-ADXP-streetName named street 0..1 and
    $iso21090-ADXP-houseNumber named streetNumber 0..1 and
    $iso21090-ADXP-additionalLocator named floorDoorNumber 0..1
* line.extension[street] ^short = "Name of the street"
* line.extension[street] ^definition = "Name of the street without the street number"
* line.extension[streetNumber] ^short = "Number of the street"
* line.extension[streetNumber] ^definition = "Number of the street without the street name"
* line.extension[floorDoorNumber] ^short = "Floor and/or door number"
* line.extension[floorDoorNumber] ^definition = "Floor and/or door number"
* district ..0
* period ..0

Invariant: ele-1
Description: "All FHIR elements must have a @value or children"
Severity: #error
Expression: "hasValue() or (children().count() > id.count())"
XPath: "@value|f:*|h:div"

Invariant: at-addr-1
Description: "If the extension for street name is used then the value for line must not be empty"
Severity: #error
Expression: "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName').empty() or $this.hasValue())"

Invariant: at-addr-2
Description: "If the extension for street number is used then the value for line must not be empty"
Severity: #error
Expression: "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber').empty() or $this.hasValue())"

Invariant: at-addr-3
Description: "If the extensions for floor/door number or additional information are used then the value for line must not be empty"
Severity: #error
Expression: "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator').empty() or $this.hasValue())"