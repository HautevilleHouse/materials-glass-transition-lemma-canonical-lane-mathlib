import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.GlassTransitionPhysicalSystem

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure ConfigurationEntropyPackage {S : GlassTransitionPhysicalSystem}
    (Phys : GlassTransitionPhysicalClosed S) where
  configurationalEntropy : Type u
  entropyCurvature : Type v
  fragilityCorrelation : Prop
  entropyCurvatureMeasured : Prop
  fragilityCorrelationClosed : fragilityCorrelation
  entropyCurvatureMeasuredClosed : entropyCurvatureMeasured

structure ConfigurationEntropyEvidence {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (Epkg : ConfigurationEntropyPackage Phys) where
  fragilityCorrelationClosed : Epkg.fragilityCorrelation
  entropyCurvatureMeasuredClosed : Epkg.entropyCurvatureMeasured

def ConfigurationEntropyClosed {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (Epkg : ConfigurationEntropyPackage Phys) : Prop :=
  Epkg.fragilityCorrelation ∧ Epkg.entropyCurvatureMeasured

theorem configuration_entropy_closed_from_evidence
    {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (Epkg : ConfigurationEntropyPackage Phys)
    (E : ConfigurationEntropyEvidence Epkg) :
    ConfigurationEntropyClosed Epkg := by
  exact And.intro E.fragilityCorrelationClosed
    E.entropyCurvatureMeasuredClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse