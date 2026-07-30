import MatchingModelsTheoremCanonicalLaneLean.DeferredAcceptance

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure StabilityTheoremPackage (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M) where
  stableMatchingExists : Prop
  coreNonemptiness : Prop
  latticeStructure : Prop

structure StabilityTheoremEvidence (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) where
  stableMatchingExistsClosed : S.stableMatchingExists
  coreNonemptinessClosed : S.coreNonemptiness
  latticeStructureClosed : S.latticeStructure

def StabilityTheoremClosed (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) : Prop :=
  S.stableMatchingExists ∧ S.coreNonemptiness ∧ S.latticeStructure

theorem stability_theorem_closed_from_evidence (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) (E : StabilityTheoremEvidence M D S) :
    StabilityTheoremClosed M D S :=
  And.intro E.stableMatchingExistsClosed
    (And.intro E.coreNonemptinessClosed E.latticeStructureClosed)

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse