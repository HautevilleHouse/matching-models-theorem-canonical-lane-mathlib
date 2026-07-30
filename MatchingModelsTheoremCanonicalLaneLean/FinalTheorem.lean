import MatchingModelsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

def ConstrainedMatchingModelsClosure (A : MatchingAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_matching_models_endgame (A : MatchingAdmissibleClass) :
    ConstrainedMatchingModelsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
