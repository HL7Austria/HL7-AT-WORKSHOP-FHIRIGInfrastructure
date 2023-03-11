Alias: $v3-TimingEvent = http://terminology.hl7.org/CodeSystem/v3-TimingEvent
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor

ValueSet: ELGATimingEventsDrugAdministration
Id: elga-timing-events-drug-administration
Title: "ELGA Timing Events Drug Administration"
Description: "ELGA ValueSet for timing of drug administration."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^url = "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_Einnahmezeitpunkte"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "ELGA GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://elga.gv.at"
* ^immutable = true
* $v3-TimingEvent#ACD "ACD"
* $v3-TimingEvent#ACM "ACM"
* $v3-TimingEvent#ACV "ACV"
* $v3-TimingEvent#HS "HS"
* $v3-NullFlavor#UNK "Unknown"