import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure FragilityKineticsPackage where
  vogelFulcherEquation : Prop
  timeTemperatureSuperposition : Prop
  cooperativityVolume : Prop
  vftAdmissible : Prop
  ttsAdmissible : Prop
  cooperativityAdmissible : Prop

structure FragilityKineticsEvidence (F : FragilityKineticsPackage) where
  vftAdmissibleClosed : F.vftAdmissible
  ttsAdmissibleClosed : F.ttsAdmissible
  cooperativityAdmissibleClosed : F.cooperativityAdmissible

def FragilityKineticsClosed (F : FragilityKineticsPackage) : Prop :=
  F.vftAdmissible ∧ F.ttsAdmissible ∧ F.cooperativityAdmissible

theorem fragility_kinetics_closed_from_evidence (F : FragilityKineticsPackage)
    (E : FragilityKineticsEvidence F) : FragilityKineticsClosed F := by
  exact And.intro E.vftAdmissibleClosed
    (And.intro E.ttsAdmissibleClosed E.cooperativityAdmissibleClosed)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse