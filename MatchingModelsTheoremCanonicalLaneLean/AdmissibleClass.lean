import MatchingModelsTheoremCanonicalLaneLean.MatchingModelsStatement

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MatchingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
