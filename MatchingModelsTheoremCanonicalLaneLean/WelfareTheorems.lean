import MatchingModelsTheoremCanonicalLaneLean.StabilityTheorem

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure WelfareTheoremPackage (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) where
  paretoEfficiency : Prop
  equityCriteria : Prop
  weightedEquityFormulation : Prop

structure WelfareTheoremEvidence (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) (W : WelfareTheoremPackage M D S) where
  paretoEfficiencyClosed : W.paretoEfficiency
  equityCriteriaClosed : W.equityCriteria
  weightedEquityFormulationClosed : W.weightedEquityFormulation

def WelfareTheoremClosed (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) (W : WelfareTheoremPackage M D S) : Prop :=
  W.paretoEfficiency ∧ W.equityCriteria ∧ W.weightedEquityFormulation

theorem welfare_theorem_closed_from_evidence (M : MatchingModel) (D : DeferredAcceptanceAlgorithm M)
    (S : StabilityTheoremPackage M D) (W : WelfareTheoremPackage M D S)
    (E : WelfareTheoremEvidence M D S W) : WelfareTheoremClosed M D S W :=
  And.intro E.paretoEfficiencyClosed
    (And.intro E.equityCriteriaClosed E.weightedEquityFormulationClosed)

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse