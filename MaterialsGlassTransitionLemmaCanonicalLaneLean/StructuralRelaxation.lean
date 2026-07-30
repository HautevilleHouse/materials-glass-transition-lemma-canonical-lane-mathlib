import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure StructuralRelaxation (A : AdmissibleClass) where
  alphaRelaxationTime : ℝ
  betaRelaxationStrength : ℝ
  fragilityIndex : ℝ
  relaxationTimeClosed : bridgeClosed A ∧ gateClosed A

theorem relaxation_time_closed (A : AdmissibleClass) (sr : StructuralRelaxation A) : sr.relaxationTimeClosed := by
  exact sr.relaxationTimeClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
