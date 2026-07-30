import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure StabilityOptimalityPackage where
  stableMatchingExists : Prop
  manOptimalMatching : Prop
  womanOptimalMatching : Prop
  latticeStructure : Prop
  polarizationTheorem : Prop
  weakParetoOptimality : Prop

structure StabilityOptimalityEvidence (S : StabilityOptimalityPackage) where
  stableMatchingExistsClosed : S.stableMatchingExists
  manOptimalMatchingClosed : S.manOptimalMatching
  womanOptimalMatchingClosed : S.womanOptimalMatching
  latticeStructureClosed : S.latticeStructure
  polarizationTheoremClosed : S.polarizationTheorem
  weakParetoOptimalityClosed : S.weakParetoOptimality

def StabilityOptimalityClosed (S : StabilityOptimalityPackage) : Prop :=
  S.stableMatchingExists ∧ S.manOptimalMatching ∧ S.womanOptimalMatching ∧
  S.latticeStructure ∧ S.polarizationTheorem ∧ S.weakParetoOptimality

theorem stability_optimality_closed_from_evidence
    (S : StabilityOptimalityPackage) (E : StabilityOptimalityEvidence S) :
    StabilityOptimalityClosed S := by
  exact And.intro E.stableMatchingExistsClosed
    (And.intro E.manOptimalMatchingClosed
      (And.intro E.womanOptimalMatchingClosed
        (And.intro E.latticeStructureClosed
          (And.intro E.polarizationTheoremClosed
            E.weakParetoOptimalityClosed))))

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse