import MatchingModelsTheoremCanonicalLaneLean.DeferredAcceptance

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure GaleShapleyPackage (A : MatchingAdmissibleClass)
    (D : DeferredAcceptancePackage A) where
  proposerOptimal : Prop
  acceptorOptimal : Prop
  strategyProofness : Prop
  runtimeBound : Prop

structure GaleShapleyEvidence (A : MatchingAdmissibleClass)
    {D : DeferredAcceptancePackage A} (G : GaleShapleyPackage A D) where
  proposerOptimalClosed : G.proposerOptimal
  acceptorOptimalClosed : G.acceptorOptimal
  strategyProofnessClosed : G.strategyProofness
  runtimeBoundClosed : G.runtimeBound

def GaleShapleyClosed (A : MatchingAdmissibleClass)
    (D : DeferredAcceptancePackage A) (G : GaleShapleyPackage A D) : Prop :=
  G.proposerOptimal ∧ G.acceptorOptimal ∧ G.strategyProofness ∧ G.runtimeBound

theorem gale_shapley_closed_from_evidence
    (A : MatchingAdmissibleClass) (D : DeferredAcceptancePackage A)
    (G : GaleShapleyPackage A D) (E : GaleShapleyEvidence A G) :
    GaleShapleyClosed A D G := by
  exact And.intro E.proposerOptimalClosed
    (And.intro E.acceptorOptimalClosed
      (And.intro E.strategyProofnessClosed E.runtimeBoundClosed))

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
