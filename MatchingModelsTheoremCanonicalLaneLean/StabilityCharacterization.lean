import MatchingModelsTheoremCanonicalLaneLean.MatchingModelsAdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure StabilityCharacterizationPackage (A : MatchingAdmissibleClass) where
  noBlockingPair : Prop
  individualRationality : Prop
  paretoEfficiency : Prop
  structuralProperties : Prop

structure StabilityCharacterizationEvidence (A : MatchingAdmissibleClass)
    (S : StabilityCharacterizationPackage A) where
  noBlockingPairClosed : S.noBlockingPair
  individualRationalityClosed : S.individualRationality
  paretoEfficiencyClosed : S.paretoEfficiency
  structuralPropertiesClosed : S.structuralProperties

def StabilityCharacterizationClosed (A : MatchingAdmissibleClass)
    (S : StabilityCharacterizationPackage A) : Prop :=
  S.noBlockingPair ∧ S.individualRationality ∧ S.paretoEfficiency ∧ S.structuralProperties

theorem stability_characterization_closed_from_evidence
    (A : MatchingAdmissibleClass) (S : StabilityCharacterizationPackage A)
    (E : StabilityCharacterizationEvidence A S) : StabilityCharacterizationClosed A S := by
  exact And.intro E.noBlockingPairClosed
    (And.intro E.individualRationalityClosed
      (And.intro E.paretoEfficiencyClosed E.structuralPropertiesClosed))

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
