import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure ModeCouplingTheory where
  criticalTemperature : ℝ
  exponentParameter : ℝ
  nonErgodicityParameter : ℝ
  correlationFunction : Prop
  correlationFunctionTerm : correlationFunction

structure ModeCouplingTheoryEvidence (M : ModeCouplingTheory) where
  correlationFunctionClosed : M.correlationFunction

def ModeCouplingTheoryClosed (M : ModeCouplingTheory) : Prop :=
  M.correlationFunction

theorem mode_coupling_theory_closed_from_evidence (M : ModeCouplingTheory)
    (E : ModeCouplingTheoryEvidence M) : ModeCouplingTheoryClosed M :=
  E.correlationFunctionClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
