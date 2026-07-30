import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.GlassTransitionPhysicalSystem

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure VogelFulcherTammannPackage {S : GlassTransitionPhysicalSystem}
    (Phys : GlassTransitionPhysicalClosed S) where
  vftEquation : Type u
  divergenceTemperature : Type v
  fragilityParameter : Type w
  vftFitted : Prop
  divergenceTemperatureClosed : Prop
  fragilityParameterClosed : Prop
  vftFittedClosed : vftFitted
  divergenceTemperatureClosedTerm : divergenceTemperatureClosed
  fragilityParameterClosedTerm : fragilityParameterClosed

structure VogelFulcherTammannEvidence {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (V : VogelFulcherTammannPackage Phys) where
  vftFittedClosed : V.vftFitted
  divergenceTemperatureClosedTerm : V.divergenceTemperatureClosed
  fragilityParameterClosedTerm : V.fragilityParameterClosed

def VogelFulcherTammannClosed {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (V : VogelFulcherTammannPackage Phys) : Prop :=
  V.vftFitted ∧ V.divergenceTemperatureClosed ∧ V.fragilityParameterClosed

theorem vogel_fulcher_tammann_closed_from_evidence
    {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (V : VogelFulcherTammannPackage Phys)
    (E : VogelFulcherTammannEvidence V) :
    VogelFulcherTammannClosed V := by
  exact And.intro E.vftFittedClosed
    (And.intro E.divergenceTemperatureClosedTerm
      E.fragilityParameterClosedTerm)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse