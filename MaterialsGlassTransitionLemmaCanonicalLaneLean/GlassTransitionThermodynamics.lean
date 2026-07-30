import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure ThermodynamicEnthalpyPackage where
  enthalpyBarrier : ℝ
  configurationalEntropy : ℝ
  fragilityIndex : ℝ
  barrierModelAdmissible : Prop
  entropyModelAdmissible : Prop

structure ThermodynamicEnthalpyEvidence (T : ThermodynamicEnthalpyPackage) where
  barrierModelAdmissibleClosed : T.barrierModelAdmissible
  entropyModelAdmissibleClosed : T.entropyModelAdmissible

def ThermodynamicEnthalpyClosed (T : ThermodynamicEnthalpyPackage) : Prop :=
  T.barrierModelAdmissible ∧ T.entropyModelAdmissible

theorem thermodynamic_enthalpy_closed_from_evidence (T : ThermodynamicEnthalpyPackage)
    (E : ThermodynamicEnthalpyEvidence T) : ThermodynamicEnthalpyClosed T := by
  exact And.intro E.barrierModelAdmissibleClosed E.entropyModelAdmissibleClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse