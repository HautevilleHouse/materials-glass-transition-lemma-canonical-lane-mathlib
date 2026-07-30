import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.CanonicalNeighborhoods
import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.Geometrization

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure GlassTransitionAnalyticFoundation where
  physicalSystem : GlassTransitionPhysicalSystem
  physicalSystemEvidence : GlassTransitionPhysicalEvidence physicalSystem
  configurationEntropy : ConfigurationEntropyPackage (glass_transition_physical_closed_from_evidence physicalSystem physicalSystemEvidence)
  configurationEntropyEvidence : ConfigurationEntropyEvidence configurationEntropy
  adamGibbs : AdamGibbsRelationPackage (glass_transition_physical_closed_from_evidence physicalSystem physicalSystemEvidence)
  adamGibbsEvidence : AdamGibbsRelationEvidence adamGibbs
  vft : VogelFulcherTammannPackage (glass_transition_physical_closed_from_evidence physicalSystem physicalSystemEvidence)
  vftEvidence : VogelFulcherTammannEvidence vft
  tts : TimeTemperatureSuperpositionPackage (glass_transition_physical_closed_from_evidence physicalSystem physicalSystemEvidence)
  ttsEvidence : TimeTemperatureSuperpositionEvidence tts

def GlassTransitionAnalyticFoundationClosed (A : GlassTransitionAnalyticFoundation) : Prop :=
  GlassTransitionPhysicalClosed A.physicalSystem ∧
  ConfigurationEntropyClosed A.configurationEntropy ∧
  AdamGibbsRelationClosed A.adamGibbs ∧
  VogelFulcherTammannClosed A.vft ∧
  TimeTemperatureSuperpositionClosed A.tts

theorem glass_transition_analytic_foundation_closed_from_evidence
    (A : GlassTransitionAnalyticFoundation) :
    GlassTransitionAnalyticFoundationClosed A := by
  exact And.intro (glass_transition_physical_closed_from_evidence A.physicalSystem A.physicalSystemEvidence)
    (And.intro (configuration_entropy_closed_from_evidence A.configurationEntropy A.configurationEntropyEvidence)
      (And.intro (adam_gibbs_relation_closed_from_evidence A.adamGibbs A.adamGibbsEvidence)
        (And.intro (vogel_fulcher_tammann_closed_from_evidence A.vft A.vftEvidence)
          (time_temperature_superposition_closed_from_evidence A.tts A.ttsEvidence))))

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse