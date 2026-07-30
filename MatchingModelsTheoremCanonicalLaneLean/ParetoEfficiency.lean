import MatchingModelsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Data.Real.Basic

/-!
# Pareto Efficiency Package
-/

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure ParetoEfficiencyPackage where
  allocationType : Type
  utilityProfiles : Type
  paretoOptimalAllocation : Prop
  noParetoImprovement : Prop

structure ParetoEfficiencyEvidence (P : ParetoEfficiencyPackage) where
  paretoOptimalAllocationClosed : P.paretoOptimalAllocation
  noParetoImprovementClosed : P.noParetoImprovement

def ParetoEfficiencyClosed (P : ParetoEfficiencyPackage) : Prop :=
  P.paretoOptimalAllocation ∧ P.noParetoImprovement

theorem pareto_efficiency_closed_from_evidence (P : ParetoEfficiencyPackage)
    (E : ParetoEfficiencyEvidence P) : ParetoEfficiencyClosed P := by
  exact And.intro E.paretoOptimalAllocationClosed E.noParetoImprovementClosed

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
