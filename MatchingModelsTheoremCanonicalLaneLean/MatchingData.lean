import MatchingModelsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure MatchingStructure (A : AdmissibleClass) where
  instruments : Type u
  cashFlows : instruments -> Type v
  payoffMatrix : Prop
  marketComplete : Prop
  riskNeutralMeasure : Prop
  payoffMatrixClosed : payoffMatrix
  marketCompleteClosed : marketComplete
  riskNeutralMeasureClosed : riskNeutralMeasure

def MatchingStructureClosed {A : AdmissibleClass} (M : MatchingStructure A) : Prop :=
  M.payoffMatrix ∧ M.marketComplete ∧ M.riskNeutralMeasure

theorem matching_structure_closed_from_evidence {A : AdmissibleClass} (M : MatchingStructure A)
    (E : M.payoffMatrix ∧ M.marketComplete ∧ M.riskNeutralMeasure) :
    MatchingStructureClosed M := by
  exact And.intro E.1 (And.intro E.2.1 E.2.2)

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse