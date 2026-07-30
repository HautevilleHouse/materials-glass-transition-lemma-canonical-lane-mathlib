import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemma

structure GlassTransitionAdmittedObject where
  material : Type u
  glassTransitionTemperature : Prop
  thermodynamicCrossover : Prop
  dynamicalArrest : Prop
  structuralRelaxationSelfconsistency : Prop

structure GlassTransitionAdmissibleClass extends AdmissibleClass where
  object : GlassTransitionAdmittedObject
  endpointSatisfied : object.glassTransitionTemperature
  remainderRecorded : object.structuralRelaxationSelfconsistency
  gateWitness : Or.inl endpointSatisfied

end MaterialsGlassTransitionLemma
end HautevilleHouse
