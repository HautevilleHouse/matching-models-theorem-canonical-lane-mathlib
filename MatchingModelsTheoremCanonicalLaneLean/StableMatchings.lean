import MatchingModelsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Stable Matchings Package
-/

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure StableMatchingsPackage where
  agentSet : Type
  preferenceRelation : Type
  stableMatchingExists : Prop
  noBlockingPair : Prop

structure StableMatchingsEvidence (S : StableMatchingsPackage) where
  stableMatchingExistsClosed : S.stableMatchingExists
  noBlockingPairClosed : S.noBlockingPair

def StableMatchingsClosed (S : StableMatchingsPackage) : Prop :=
  S.stableMatchingExists ∧ S.noBlockingPair

theorem stable_matchings_closed_from_evidence (S : StableMatchingsPackage)
    (E : StableMatchingsEvidence S) : StableMatchingsClosed S := by
  exact And.intro E.stableMatchingExistsClosed E.noBlockingPairClosed

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
