import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure DynamicSusceptibilityPackage where
  alphaRelaxationPeak : Prop
  betaRelaxationTail : Prop
  nonExponentialDecay : Prop
  haviliakNegamiModel : Prop
  alphaAdmissible : Prop
  betaAdmissible : Prop
  nonExponentialAdmissible : Prop
  hnAdmissible : Prop

structure DynamicSusceptibilityEvidence (D : DynamicSusceptibilityPackage) where
  alphaAdmissibleClosed : D.alphaAdmissible
  betaAdmissibleClosed : D.betaAdmissible
  nonExponentialAdmissibleClosed : D.nonExponentialAdmissible
  hnAdmissibleClosed : D.hnAdmissible

def DynamicSusceptibilityClosed (D : DynamicSusceptibilityPackage) : Prop :=
  D.alphaAdmissible ∧ D.betaAdmissible ∧ D.nonExponentialAdmissible ∧ D.hnAdmissible

theorem dynamic_susceptibility_closed_from_evidence (D : DynamicSusceptibilityPackage)
    (E : DynamicSusceptibilityEvidence D) : DynamicSusceptibilityClosed D := by
  exact And.intro E.alphaAdmissibleClosed
    (And.intro E.betaAdmissibleClosed
      (And.intro E.nonExponentialAdmissibleClosed E.hnAdmissibleClosed))

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse