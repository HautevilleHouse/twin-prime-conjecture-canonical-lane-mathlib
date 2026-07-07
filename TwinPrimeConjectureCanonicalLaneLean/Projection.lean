import TwinPrimeConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def twinPrimeProjection : Projection TwinPrimeEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem twin_prime_projection_idempotent (x : TwinPrimeEndgameState) :
    twinPrimeProjection.toFun (twinPrimeProjection.toFun x) = twinPrimeProjection.toFun x := by
  exact twinPrimeProjection.idempotent x

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
