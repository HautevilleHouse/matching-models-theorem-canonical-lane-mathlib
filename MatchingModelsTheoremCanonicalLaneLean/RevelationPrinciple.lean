import MatchingModelsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Revelation Principle Package
-/

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure RevelationPrinciplePackage where
  mechanismDesign : Type
  truthTellingStrategy : Type
  directMechanismEquivalent : Prop
  incentiveCompatibility : Prop

structure RevelationPrincipleEvidence (R : RevelationPrinciplePackage) where
  directMechanismEquivalentClosed : R.directMechanismEquivalent
  incentiveCompatibilityClosed : R.incentiveCompatibility

def RevelationPrincipleClosed (R : RevelationPrinciplePackage) : Prop :=
  R.directMechanismEquivalent ∧ R.incentiveCompatibility

theorem revelation_principle_closed_from_evidence (R : RevelationPrinciplePackage)
    (E : RevelationPrincipleEvidence R) : RevelationPrincipleClosed R := by
  exact And.intro E.directMechanismEquivalentClosed E.incentiveCompatibilityClosed

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
