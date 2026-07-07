import TwinPrimeConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

def ConstrainedTwinPrimeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_twin_prime_endgame (A : AdmissibleClass) :
    ConstrainedTwinPrimeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
