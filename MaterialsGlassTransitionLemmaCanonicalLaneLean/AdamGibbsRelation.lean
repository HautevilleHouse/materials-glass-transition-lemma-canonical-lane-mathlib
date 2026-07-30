import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure AdamGibbsRelation where
  configurationalEntropy : ℝ
  viscosity : ℝ
  proportionalityConstant : ℝ
  temperature : ℝ
  relationFormula : Prop
  relationFormulaTerm : relationFormula

structure AdamGibbsRelationEvidence (A : AdamGibbsRelation) where
  relationFormulaClosed : A.relationFormula

def AdamGibbsRelationClosed (A : AdamGibbsRelation) : Prop :=
  A.relationFormula

theorem adam_gibbs_relation_closed_from_evidence (A : AdamGibbsRelation)
    (E : AdamGibbsRelationEvidence A) : AdamGibbsRelationClosed A :=
  E.relationFormulaClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
