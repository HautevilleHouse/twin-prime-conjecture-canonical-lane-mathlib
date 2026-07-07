import TwinPrimeConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def twinPrimeProjection : Projection TwinPrimeClosureState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem twin_prime_projection_idempotent (x : TwinPrimeClosureState) :
    twinPrimeProjection.toFun (twinPrimeProjection.toFun x) = twinPrimeProjection.toFun x := by
  exact twinPrimeProjection.idempotent x

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
