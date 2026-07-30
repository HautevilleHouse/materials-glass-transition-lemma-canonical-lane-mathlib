import MaterialsGlassTransitionLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GlassTransitionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GlassTransitionAdmittedObject where
  space : GlassTransitionSpace
  viscosityAnomaly : Prop
  relaxationOnset : Prop
  glassyStateModel : Type
  glassyStateTopology : TopologicalSpace glassyStateModel
  correspondsToGlassyState : Prop
  conclusion : correspondsToGlassyState

structure GlassTransitionEndgameState where
  object : GlassTransitionAdmittedObject

def GlassTransitionWitnessClosed (O : GlassTransitionAdmittedObject) : Prop :=
  O.correspondsToGlassyState

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
