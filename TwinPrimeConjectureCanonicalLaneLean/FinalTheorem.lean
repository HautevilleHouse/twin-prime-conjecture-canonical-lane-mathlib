import TwinPrimeConjectureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

def ConstrainedTwinPrimeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_twin_prime_closure (A : AdmissibleClass) :
    ConstrainedTwinPrimeClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
