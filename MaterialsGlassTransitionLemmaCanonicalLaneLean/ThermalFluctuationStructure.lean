import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure ThermalFluctuationStructure where
  temperature : ℝ
  energyBarrier : ℝ
  relaxationTime : ℝ
  fluctuationDissipationRelation : Prop
  fluctuationDissipationRelationTerm : fluctuationDissipationRelation

structure ThermalFluctuationEvidence (T : ThermalFluctuationStructure) where
  fluctuationDissipationRelationClosed : T.fluctuationDissipationRelation

def ThermalFluctuationClosed (T : ThermalFluctuationStructure) : Prop :=
  T.fluctuationDissipationRelation

theorem thermal_fluctuation_closed_from_evidence (T : ThermalFluctuationStructure)
    (E : ThermalFluctuationEvidence T) : ThermalFluctuationClosed T :=
  E.fluctuationDissipationRelationClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
