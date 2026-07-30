import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure ElasticityFractureMechanicsPackage where
  elasticModulus : ℝ
  poissonRatio : ℝ
  fractureToughness : ℝ
  stressStrainRelation : Prop
  crackPropagationCondition : Prop
  isLinearElastic : Prop
  stressStrainRelationClosed : stressStrainRelation
  crackPropagationConditionClosed : crackPropagationCondition

structure ElasticityFractureMechanicsEvidence (E : ElasticityFractureMechanicsPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  crackPropagationConditionClosed : E.crackPropagationCondition

def ElasticityFractureMechanicsClosed (E : ElasticityFractureMechanicsPackage) : Prop :=
  E.stressStrainRelation ∧ E.crackPropagationCondition

theorem elasticity_fracture_mechanics_closed_from_evidence (E : ElasticityFractureMechanicsPackage)
    (Ev : ElasticityFractureMechanicsEvidence E) : ElasticityFractureMechanicsClosed E :=
  And.intro Ev.stressStrainRelationClosed Ev.crackPropagationConditionClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
