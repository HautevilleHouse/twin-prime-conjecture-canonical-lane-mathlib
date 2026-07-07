import TwinPrimeConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : TwinPrimeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TwinPrimeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
