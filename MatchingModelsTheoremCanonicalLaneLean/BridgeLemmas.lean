import MatchingModelsTheoremCanonicalLaneLean.MatchingModelsAdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

def bridgeClosed (A : MatchingAdmissibleClass) : Prop :=
  A.object.existenceOfStableMatching ∧ A.object.cutOrCycleProperty

theorem bridge_from_admissible_class (A : MatchingAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
