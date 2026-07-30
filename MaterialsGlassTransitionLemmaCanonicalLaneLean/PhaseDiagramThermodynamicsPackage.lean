import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure PhaseDiagramThermodynamicsPackage where
  gibbsFreeEnergy : Type u
  enthalpyEntropyBalance : Prop
  liquidusSolidusLines : Prop
  meltingPointDefined : ℝ
  glassTransitionTemperature : ℝ
  enthalpyEntropyBalanceClosed : enthalpyEntropyBalance
  liquidusSolidusLinesClosed : liquidusSolidusLines

structure PhaseDiagramThermodynamicsEvidence (P : PhaseDiagramThermodynamicsPackage) where
  enthalpyEntropyBalanceClosed : P.enthalpyEntropyBalance
  liquidusSolidusLinesClosed : P.liquidusSolidusLines

def PhaseDiagramThermodynamicsClosed (P : PhaseDiagramThermodynamicsPackage) : Prop :=
  P.enthalpyEntropyBalance ∧ P.liquidusSolidusLines

theorem phase_diagram_thermodynamics_closed_from_evidence (P : PhaseDiagramThermodynamicsPackage)
    (E : PhaseDiagramThermodynamicsEvidence P) : PhaseDiagramThermodynamicsClosed P :=
  And.intro E.enthalpyEntropyBalanceClosed E.liquidusSolidusLinesClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
