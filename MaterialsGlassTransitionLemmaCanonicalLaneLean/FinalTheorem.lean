import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

def ConstrainedGlassTransitionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_glass_transition_endgame (A : AdmissibleClass) :
    ConstrainedGlassTransitionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse