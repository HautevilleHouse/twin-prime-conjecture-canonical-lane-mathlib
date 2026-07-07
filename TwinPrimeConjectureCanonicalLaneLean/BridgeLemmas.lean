import TwinPrimeConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TwinPrimeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact Exists.intro A.object.candidate (And.intro A.object.candidateAboveBound A.object.candidateTwinPrime)

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
