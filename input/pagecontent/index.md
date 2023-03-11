# HL7 Austria FHIR Implementation Guide 
## Was ist e-Medikation?
Die e-Medikation ist als Service zu verstehen, welches im Zuge des Verordnungs-, des Abgabe-, bzw. des Verabreichungsprozesses Informationen zur Medikation eines Patienten zur Verfügung stellt. Zentrale Elemente sind dabei die Medikationsdatenbank, sowie deren Schnittstellen zu bestehender IT-Infrastruktur (wie Arztpraxissoftware-, Apothekensoftware- und Krankenhausinformations-Systeme. Zur Vernetzung wird die ELGA-Infrastruktur genutzt.

Die e-Medikation stellt ausschließlich Informationen über in den letzten 365 Tagen erfolgte Verordnungen oder Abgaben zur Verfügung. Prüfungen auf potentielle Wechselwirkungen, Kontraindikationen, Über- oder Unterdosierungen, Reichweiten etc. erfolgen in Eigenverantwortung der ELGA Gesundheitsdiensteanbieter und sind nicht Gegenstand des Informationssystems „e-Medikation“.

### Zweck
Das Ziel dieses Dokuments ist die Beschreibung der Struktur von e-Medikations-Dokumenten der Elektronischen Gesundheitsakte ELGA. Insbesondere behandelt das Dokument jegliche Strukturen, welche auf der Basis des Implementierungsleitfadens

[„HL7 Implementation Guide for CDA® R2: Allgemeiner Implementierungsleitfaden für ELGA CDA Dokumente“ [OID Root 1.2.40.0.34.7.1]](https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden)

speziell für die Dokumentenklassen [^1]

- Rezept
- Abgabe
- **Medikationsliste**[^2]
- **Pharmazeutische Empfehlung (Korrekturmeldung)**[^3]

gültig sind. Die Beschreibung enthält Festlegungen, Einschränkungen und Bedingungen auf Grundlage von HL7 CDA-Elementen.

---

[^1]: Es handelt sich bei den „Dokumentenklassen“ der e-Medikation nicht um Dokumentenklassen im engeren Sinn (wie etwa Befunde), sondern um Arten von Nachrichten, die zwischen den IT-Systemen ausgetauscht werden. Diese Nachrichten haben die technische Form von CDA-Dokumenten, die entsprechend einer „Dokumentenklasse“ zugeordnet werden.

[^2]: Die „Medikationsliste“ ist ein automatisch generiertes Dokument, das alle relevanten Informationen aus „Verordnungen“, „Abgaben“ und „pharmazeutischen Empfehlungen“ zusammenfasst.

[^3]: Der Begriff „Pharmazeutische Empfehlung“ wird hier im Sinne des IHE Pharmacy Technical Frameworks verwendet und wird aus zur Beibehaltung der Konsistenz mit diesem Standard beibehalten. Die „Pharmazeutische Empfehlung“ kann als Korrekturmeldung verstanden werden und bezeichnet die Änderung einer Verordnung oder Abgabe - unabhängig von Rollen und tatsächlichen Berechtigungen.