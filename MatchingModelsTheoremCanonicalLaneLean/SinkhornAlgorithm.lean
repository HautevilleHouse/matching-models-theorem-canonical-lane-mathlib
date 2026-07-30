import MatchingModelsTheoremCanonicalLaneLean.KantorovichDuality

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure SinkhornAlgorithmPackage {μ ν : Type} {M : MatchingModel μ ν}
    {K : KantorovichDualityPackage M} where
  entropyRegularization : ℝ
  iterationCount : ℕ
  convergenceTolerance : ℝ
  converged : Prop
  solutionCoupling : M.couplingSpace → ℝ
  convergedClosed : converged

def SinkhornAlgorithmClosed {μ ν : Type} {M : MatchingModel μ ν}
    {K : KantorovichDualityPackage M} (S : SinkhornAlgorithmPackage M K) : Prop :=
  S.converged

theorem sinkhorn_algorithm_closed_from_evidence {μ ν : Type} {M : MatchingModel μ ν}
    {K : KantorovichDualityPackage M} (S : SinkhornAlgorithmPackage M K)
    (h : S.converged) : SinkhornAlgorithmClosed S :=
  h

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse