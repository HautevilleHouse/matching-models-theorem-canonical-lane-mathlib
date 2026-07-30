import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure MatchingModel (μ : Type) (ν : Type) where
  sourceDistribution : μ → ℝ
  targetDistribution : ν → ℝ
  couplingSpace : Type
  couplingDistribution : couplingSpace → ℝ
  marginalSource : Prop
  marginalTarget : Prop
  costFunction : couplingSpace → ℝ
  optimalTransportCost : ℝ
  marginalSourceClosed : marginalSource
  marginalTargetClosed : marginalTarget

def MatchingModelClosed {μ ν : Type} (M : MatchingModel μ ν) : Prop :=
  M.marginalSource ∧ M.marginalTarget

theorem matching_model_closed_from_evidence {μ ν : Type} (M : MatchingModel μ ν)
    (hSource : M.marginalSource) (hTarget : M.marginalTarget) : MatchingModelClosed M :=
  And.intro hSource hTarget

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse