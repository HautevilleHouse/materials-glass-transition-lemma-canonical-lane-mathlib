import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure VogelFulcherTammannLaw where
  referenceTemperature : ℝ
  fragilityParameter : ℝ
  preExponentialFactor : ℝ
  viscosityFormula : Prop
  viscosityFormulaTerm : viscosityFormula

structure VogelFulcherTammannEvidence (V : VogelFulcherTammannLaw) where
  viscosityFormulaClosed : V.viscosityFormula

def VogelFulcherTammannClosed (V : VogelFulcherTammannLaw) : Prop :=
  V.viscosityFormula

theorem vogel_fulcher_tammann_closed_from_evidence (V : VogelFulcherTammannLaw)
    (E : VogelFulcherTammannEvidence V) : VogelFulcherTammannClosed V :=
  E.viscosityFormulaClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
