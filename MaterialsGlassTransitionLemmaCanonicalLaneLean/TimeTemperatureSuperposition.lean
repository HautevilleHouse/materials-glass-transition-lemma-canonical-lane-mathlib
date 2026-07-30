import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGlassTransitionLemmaCanonicalLaneLean.GlassTransitionPhysicalSystem

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure TimeTemperatureSuperpositionPackage {S : GlassTransitionPhysicalSystem}
    (Phys : GlassTransitionPhysicalClosed S) where
  masterCurve : Type u
  shiftFactor : Type v
  williamsLandelFerryCoefficients : Type w
  masterCurveConstructed : Prop
  shiftFactorClosed : Prop
  wlfCoefficientsClosed : Prop
  masterCurveConstructedClosed : masterCurveConstructed
  shiftFactorClosedTerm : shiftFactorClosed
  wlfCoefficientsClosedTerm : wlfCoefficientsClosed

structure TimeTemperatureSuperpositionEvidence {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (T : TimeTemperatureSuperpositionPackage Phys) where
  masterCurveConstructedClosed : T.masterCurveConstructed
  shiftFactorClosedTerm : T.shiftFactorClosed
  wlfCoefficientsClosedTerm : T.wlfCoefficientsClosed

def TimeTemperatureSuperpositionClosed {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (T : TimeTemperatureSuperpositionPackage Phys) : Prop :=
  T.masterCurveConstructed ∧ T.shiftFactorClosed ∧ T.wlfCoefficientsClosed

theorem time_temperature_superposition_closed_from_evidence
    {S : GlassTransitionPhysicalSystem}
    {Phys : GlassTransitionPhysicalClosed S}
    (T : TimeTemperatureSuperpositionPackage Phys)
    (E : TimeTemperatureSuperpositionEvidence T) :
    TimeTemperatureSuperpositionClosed T := by
  exact And.intro E.masterCurveConstructedClosed
    (And.intro E.shiftFactorClosedTerm
      E.wlfCoefficientsClosedTerm)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse