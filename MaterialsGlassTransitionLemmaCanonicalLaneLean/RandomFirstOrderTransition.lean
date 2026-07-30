import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemma

structure RandomFirstOrderTransitionPackage where
  mosaicLength : Type u
  surfaceTension : Type v
  configurationalEntropy : Type w
  nucleationBarrier : Prop
  activatedDynamics : Prop
  breakdownOfAdamGibbs : Prop

structure RandomFirstOrderTransitionEvidence (R : RandomFirstOrderTransitionPackage) where
  nucleationBarrierClosed : R.nucleationBarrier
  activatedDynamicsClosed : R.activatedDynamics
  breakdownOfAdamGibbsClosed : R.breakdownOfAdamGibbs

def RandomFirstOrderTransitionClosed (R : RandomFirstOrderTransitionPackage) : Prop :=
  R.nucleationBarrier ∧ R.activatedDynamics ∧ R.breakdownOfAdamGibbs

theorem random_first_order_transition_closed_from_evidence
    (R : RandomFirstOrderTransitionPackage) (E : RandomFirstOrderTransitionEvidence R) :
    RandomFirstOrderTransitionClosed R := by
  exact And.intro E.nucleationBarrierClosed (And.intro E.activatedDynamicsClosed E.breakdownOfAdamGibbsClosed)

end MaterialsGlassTransitionLemma
end HautevilleHouse
