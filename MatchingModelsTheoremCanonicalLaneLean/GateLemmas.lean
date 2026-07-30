import MatchingModelsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

def gateClosed (A : MatchingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MatchingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
