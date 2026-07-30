import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure MatchingModel where
  dataset : Type u
  featureSpace : Type v
  assignmentSpace : Type w
  preferenceOrder : Prop
  stabilityCondition : Prop

structure MatchingAdmittedObject where
  model : MatchingModel
  existenceOfStableMatching : Prop
  cutOrCycleProperty : Prop
  conclusion : existenceOfStableMatching ∧ cutOrCycleProperty

structure MatchingAdmissibleClass where
  object : MatchingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def matchingAdmittedClosure (A : MatchingAdmissibleClass) : Prop :=
  (A.object.existenceOfStableMatching ∧ A.object.cutOrCycleProperty) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
