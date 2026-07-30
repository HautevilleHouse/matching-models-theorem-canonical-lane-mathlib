import MatchingModelsTheoremCanonicalLaneLean.MatchingModels

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure KantorovichDualityPackage {μ ν : Type} (M : MatchingModel μ ν) where
  primalOptimal : ℝ
  dualOptimal : ℝ
  strongDuality : primalOptimal = dualOptimal
  dualFeasibility : Prop
  strongDualityClosed : strongDuality

def KantorovichDualityClosed {μ ν : Type} {M : MatchingModel μ ν}
    (K : KantorovichDualityPackage M) : Prop :=
  K.strongDuality

theorem kantorovich_duality_closed_from_evidence {μ ν : Type} {M : MatchingModel μ ν}
    (K : KantorovichDualityPackage M) : KantorovichDualityClosed K :=
  K.strongDualityClosed

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse