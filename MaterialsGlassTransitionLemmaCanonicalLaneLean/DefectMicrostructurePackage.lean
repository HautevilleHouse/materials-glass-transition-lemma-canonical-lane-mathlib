import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure DefectMicrostructurePackage where
  pointDefects : Prop
  dislocations : Prop
  grainBoundaries : Prop
  voidsOrInclusions : Prop
  defectInteractionModel : Prop
  pointDefectsClosed : pointDefects
  dislocationsClosed : dislocations
  grainBoundariesClosed : grainBoundaries
  voidsOrInclusionsClosed : voidsOrInclusions
  defectInteractionModelClosed : defectInteractionModel

structure DefectMicrostructureEvidence (D : DefectMicrostructurePackage) where
  pointDefectsClosed : D.pointDefects
  dislocationsClosed : D.dislocations
  grainBoundariesClosed : D.grainBoundaries
  voidsOrInclusionsClosed : D.voidsOrInclusions
  defectInteractionModelClosed : D.defectInteractionModel

def DefectMicrostructureClosed (D : DefectMicrostructurePackage) : Prop :=
  D.pointDefects ∧ D.dislocations ∧ D.grainBoundaries ∧ D.voidsOrInclusions ∧ D.defectInteractionModel

theorem defect_microstructure_closed_from_evidence (D : DefectMicrostructurePackage)
    (E : DefectMicrostructureEvidence D) : DefectMicrostructureClosed D :=
  And.intro E.pointDefectsClosed
    (And.intro E.dislocationsClosed
      (And.intro E.grainBoundariesClosed
        (And.intro E.voidsOrInclusionsClosed E.defectInteractionModelClosed)))

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
