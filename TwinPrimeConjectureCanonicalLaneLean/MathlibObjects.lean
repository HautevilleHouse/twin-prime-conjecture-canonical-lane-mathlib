import TwinPrimeConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Prime.Basic

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def TwinPrimeAt (p : Nat) : Prop :=
  Nat.Prime p ∧ Nat.Prime (p + 2)

structure TwinPrimeAdmittedObject where
  lowerBound : Nat
  candidate : Nat
  candidateAboveBound : lowerBound <= candidate
  candidateTwinPrime : TwinPrimeAt candidate

structure TwinPrimeEndgameState where
  object : TwinPrimeAdmittedObject

def TwinPrimeWitnessClosed (O : TwinPrimeAdmittedObject) : Prop :=
  exists p : Nat, O.lowerBound <= p ∧ TwinPrimeAt p

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
