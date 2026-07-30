import MatchingModelsTheoremCanonicalLaneLean.MatchingData

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure HedgingPricingPackage {A : AdmissibleClass} (M : MatchingStructure A) where
  hedgingStrategy : Type u
  pricingFunctional : M.cashFlows -> Type v
  replicatingPortfolio : Prop
  noArbitrage : Prop
  replicatingPortfolioClosed : replicatingPortfolio
  noArbitrageClosed : noArbitrage

structure HedgingPricingEvidence {A : AdmissibleClass} {M : MatchingStructure A}
    (H : HedgingPricingPackage M) where
  replicatingPortfolioClosed : H.replicatingPortfolio
  noArbitrageClosed : H.noArbitrage

def HedgingPricingClosed {A : AdmissibleClass} {M : MatchingStructure A}
    (H : HedgingPricingPackage M) : Prop :=
  H.replicatingPortfolio ∧ H.noArbitrage

theorem hedging_pricing_closed_from_evidence {A : AdmissibleClass} {M : MatchingStructure A}
    (H : HedgingPricingPackage M) (E : HedgingPricingEvidence H) :
    HedgingPricingClosed H := by
  exact And.intro E.replicatingPortfolioClosed E.noArbitrageClosed

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse