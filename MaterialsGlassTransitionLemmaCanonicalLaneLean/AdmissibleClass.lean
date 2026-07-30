import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure GlassTransitionAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  glassTransitionHolds : Prop
  conclusion : glassTransitionHolds

structure GlassTransitionAdmissibleClass where
  object : GlassTransitionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GlassTransitionAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
