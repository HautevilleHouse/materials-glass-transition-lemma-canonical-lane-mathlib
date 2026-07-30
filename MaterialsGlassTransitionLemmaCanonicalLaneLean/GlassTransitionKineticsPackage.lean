import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure GlassTransitionKineticsPackage where
  viscosityFunction : Type u
  temperatureDependence : Prop
  relaxationTimeModel : Prop
  fictiveTemperature : Prop
  fragilityIndex : ℝ
  temperatureDependenceClosed : temperatureDependence
  relaxationTimeModelClosed : relaxationTimeModel
  fictiveTemperatureClosed : fictiveTemperature

structure GlassTransitionKineticsEvidence (G : GlassTransitionKineticsPackage) where
  temperatureDependenceClosed : G.temperatureDependence
  relaxationTimeModelClosed : G.relaxationTimeModel
  fictiveTemperatureClosed : G.fictiveTemperature

def GlassTransitionKineticsClosed (G : GlassTransitionKineticsPackage) : Prop :=
  G.temperatureDependence ∧ G.relaxationTimeModel ∧ G.fictiveTemperature

theorem glass_transition_kinetics_closed_from_evidence (G : GlassTransitionKineticsPackage)
    (E : GlassTransitionKineticsEvidence G) : GlassTransitionKineticsClosed G :=
  And.intro E.temperatureDependenceClosed
    (And.intro E.relaxationTimeModelClosed E.fictiveTemperatureClosed)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
