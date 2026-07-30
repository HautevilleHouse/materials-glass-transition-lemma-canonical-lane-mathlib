import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure GlassTransitionPhysicalSystem where
  temperature : Type u
  pressure : Type v
  coolingRate : Type w
  fictiveTemperature : Type x
  fragilityIndex : Type y
  isGlassFormer : Prop
  fragilityMeasured : Prop
  coolingRateControlled : Prop
  isGlassFormerClosed : isGlassFormer
  fragilityMeasuredClosed : fragilityMeasured
  coolingRateControlledClosed : coolingRateControlled

structure GlassTransitionPhysicalEvidence (S : GlassTransitionPhysicalSystem) where
  isGlassFormerClosed : S.isGlassFormer
  fragilityMeasuredClosed : S.fragilityMeasured
  coolingRateControlledClosed : S.coolingRateControlled

def GlassTransitionPhysicalClosed (S : GlassTransitionPhysicalSystem) : Prop :=
  S.isGlassFormer ∧ S.fragilityMeasured ∧ S.coolingRateControlled

theorem glass_transition_physical_closed_from_evidence
    (S : GlassTransitionPhysicalSystem)
    (E : GlassTransitionPhysicalEvidence S) :
    GlassTransitionPhysicalClosed S := by
  exact And.intro E.isGlassFormerClosed
    (And.intro E.fragilityMeasuredClosed E.coolingRateControlledClosed)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse