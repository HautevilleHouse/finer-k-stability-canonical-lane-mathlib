import FinerKStabilityCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FinerKStabilityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.analyticModelWitness,
    A.object.schemeMorphismGateWitness,
    A.object.variationalBridgeWitness,
    A.object.classicalRemainderCarried⟩

end FinerKStabilityCanonicalLaneLean
end HautevilleHouse
