import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure KauzmannParadox where
  configurationalEntropyZero : ℝ
  paradoxResolved : Prop

structure KauzmannState {A : AdmissibleClass} (k : KauzmannParadox) where
  entropyBounds : ℝ
  closed : bridgeClosed A ∧ gateClosed A ∧ k.paradoxResolved

theorem kauzmann_closed (A : AdmissibleClass) (k : KauzmannParadox) (ks : KauzmannState k) : ks.closed := by
  exact ks.closed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
