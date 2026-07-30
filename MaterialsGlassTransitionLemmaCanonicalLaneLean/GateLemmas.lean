import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
