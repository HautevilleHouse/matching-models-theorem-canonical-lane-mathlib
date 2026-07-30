import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure DeferredAcceptancePackage where
  menPropose : Prop
  womenDecide : Prop
  tentativeMatchesFormed : Prop
  rejectionFeedback : Prop
  iterationContinues : Prop
  terminationAfterFiniteRounds : Prop
  stabilityOfFinalMatching : Prop

structure DeferredAcceptanceEvidence (D : DeferredAcceptancePackage) where
  menProposeClosed : D.menPropose
  womenDecideClosed : D.womenDecide
  tentativeMatchesFormedClosed : D.tentativeMatchesFormed
  rejectionFeedbackClosed : D.rejectionFeedback
  iterationContinuesClosed : D.iterationContinues
  terminationAfterFiniteRoundsClosed : D.terminationAfterFiniteRounds
  stabilityOfFinalMatchingClosed : D.stabilityOfFinalMatching

def DeferredAcceptanceClosed (D : DeferredAcceptancePackage) : Prop :=
  D.menPropose ∧ D.womenDecide ∧ D.tentativeMatchesFormed ∧
  D.rejectionFeedback ∧ D.iterationContinues ∧
  D.terminationAfterFiniteRounds ∧ D.stabilityOfFinalMatching

theorem deferred_acceptance_closed_from_evidence
    (D : DeferredAcceptancePackage) (E : DeferredAcceptanceEvidence D) :
    DeferredAcceptanceClosed D := by
  exact And.intro E.menProposeClosed
    (And.intro E.womenDecideClosed
      (And.intro E.tentativeMatchesFormedClosed
        (And.intro E.rejectionFeedbackClosed
          (And.intro E.iterationContinuesClosed
            (And.intro E.terminationAfterFiniteRoundsClosed
              E.stabilityOfFinalMatchingClosed)))))

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse