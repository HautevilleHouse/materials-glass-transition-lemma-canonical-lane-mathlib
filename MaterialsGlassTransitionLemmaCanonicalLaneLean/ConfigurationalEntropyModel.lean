import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure ConfigurationalEntropyModel where
  configurationalEntropy : ℝ
  numberOfConfigurations : ℕ
  idealGlassTransition : Prop
  entropyFormula : Prop
  entropyFormulaTerm : entropyFormula

structure ConfigurationalEntropyEvidence (C : ConfigurationalEntropyModel) where
  entropyFormulaClosed : C.entropyFormula

def ConfigurationalEntropyClosed (C : ConfigurationalEntropyModel) : Prop :=
  C.entropyFormula

theorem configurational_entropy_closed_from_evidence (C : ConfigurationalEntropyModel)
    (E : ConfigurationalEntropyEvidence C) : ConfigurationalEntropyClosed C :=
  E.entropyFormulaClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
