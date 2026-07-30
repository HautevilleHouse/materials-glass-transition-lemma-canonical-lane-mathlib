import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemma

structure AmorphousOrderParameterPackage where
  densityCorrelation : Type u
  bondOrientationalOrder : Type v
  localCoordinationNumber : Type w
  mediumRangeOrder : Prop
  frustrationLimitedDomains : Prop
  kineticArrestSignature : Prop

structure AmorphousOrderParameterEvidence (P : AmorphousOrderParameterPackage) where
  mediumRangeOrderClosed : P.mediumRangeOrder
  frustrationLimitedDomainsClosed : P.frustrationLimitedDomains
  kineticArrestSignatureClosed : P.kineticArrestSignature

def AmorphousOrderParameterClosed (P : AmorphousOrderParameterPackage) : Prop :=
  P.mediumRangeOrder ∧ P.frustrationLimitedDomains ∧ P.kineticArrestSignature

theorem amorphous_order_parameter_closed_from_evidence
    (P : AmorphousOrderParameterPackage) (E : AmorphousOrderParameterEvidence P) :
    AmorphousOrderParameterClosed P := by
  exact And.intro E.mediumRangeOrderClosed (And.intro E.frustrationLimitedDomainsClosed E.kineticArrestSignatureClosed)

end MaterialsGlassTransitionLemma
end HautevilleHouse
