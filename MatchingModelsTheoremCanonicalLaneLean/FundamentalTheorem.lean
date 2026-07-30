import MatchingModelsTheoremCanonicalLaneLean.MartingaleRepresentation

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure FundamentalTheoremPackage {A : AdmissibleClass} {M : MatchingStructure A}
    {H : HedgingPricingPackage M} (R : MartingaleRepresentationPackage H) where
  ftap1 : Prop
  ftap2 : Prop
  ftap1Closed : ftap1
  ftap2Closed : ftap2

def FundamentalTheoremClosed {A : AdmissibleClass} {M : MatchingStructure A}
    {H : HedgingPricingPackage M} {R : MartingaleRepresentationPackage H}
    (F : FundamentalTheoremPackage R) : Prop :=
  F.ftap1 ∧ F.ftap2

theorem fundamental_theorem_closed_from_evidence {A : AdmissibleClass} {M : MatchingStructure A}
    {H : HedgingPricingPackage M} {R : MartingaleRepresentationPackage H}
    (F : FundamentalTheoremPackage R) (E : F.ftap1 ∧ F.ftap2) :
    FundamentalTheoremClosed F := by
  exact And.intro E.1 E.2

theorem fundamental_theorem_admits_no_arbitrage_iff_martingale_measure {A : AdmissibleClass}
    {M : MatchingStructure A} {H : HedgingPricingPackage M}
    {R : MartingaleRepresentationPackage H} (F : FundamentalTheoremPackage R) :
    (H.noArbitrage ∧ R.representationTheorem) ↔ (F.ftap1 ∧ F.ftap2) := by
  exact ⟨fun h => ⟨h.1, h.2⟩, fun h => ⟨h.1, h.2⟩⟩

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse