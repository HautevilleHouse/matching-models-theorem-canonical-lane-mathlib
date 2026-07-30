import MatchingModelsTheoremCanonicalLaneLean.MatchingModelsAdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure DeferredAcceptancePackage (A : MatchingAdmissibleClass) where
  proposalProcess : Prop
  tentativeAcceptance : Prop
  iterationStability : Prop
  algorithmTerminates : Prop

structure DeferredAcceptanceEvidence (A : MatchingAdmissibleClass) (D : DeferredAcceptancePackage A) where
  proposalProcessClosed : D.proposalProcess
  tentativeAcceptanceClosed : D.tentativeAcceptance
  iterationStabilityClosed : D.iterationStability
  algorithmTerminatesClosed : D.algorithmTerminates

def DeferredAcceptanceClosed (A : MatchingAdmissibleClass) (D : DeferredAcceptancePackage A) : Prop :=
  D.proposalProcess ∧ D.tentativeAcceptance ∧ D.iterationStability ∧ D.algorithmTerminates

theorem deferred_acceptance_closed_from_evidence
    (A : MatchingAdmissibleClass) (D : DeferredAcceptancePackage A)
    (E : DeferredAcceptanceEvidence A D) : DeferredAcceptanceClosed A D := by
  exact And.intro E.proposalProcessClosed
    (And.intro E.tentativeAcceptanceClosed
      (And.intro E.iterationStabilityClosed E.algorithmTerminatesClosed))

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
