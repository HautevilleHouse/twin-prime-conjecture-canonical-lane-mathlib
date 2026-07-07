import TwinPrimeConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TwinPrimePatternSubstrateClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨(Exists.intro A.object.window.candidate
      (And.intro A.object.window.candidateAboveBound A.object.candidateTwinPrime)),
    A.object.admissibleWindowWitness,
    A.object.localObstructionsWitness,
    A.object.obstructionRemainderWitness,
    A.object.analyticCountingSurfaceWitness,
    A.object.classicalRemainderCarried⟩

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
