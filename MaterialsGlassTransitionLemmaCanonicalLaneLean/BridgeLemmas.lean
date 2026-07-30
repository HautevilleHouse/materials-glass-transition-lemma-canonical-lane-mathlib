import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (match A.object with
  | { space := s, conclusion := c } => c)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  (match A.object with
  | { space := s, conclusion := c } => c)

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
