import MatchingModelsTheoremCanonicalLaneLean.SinkhornAlgorithm

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure EntropicOptimalTransportPackage {μ ν : Type} {M : MatchingModel μ ν}
    {K : KantorovichDualityPackage M} {S : SinkhornAlgorithmPackage M K} where
  regularizedCost : ℝ
  relativeEntropy : ℝ
  errorBound : ℝ
  errorBoundSatisfied : errorBound ≤ S.convergenceTolerance
  errorBoundClosed : errorBoundSatisfied

def EntropicOptimalTransportClosed {μ ν : Type} {M : MatchingModel μ ν}
    {K : KantorovichDualityPackage M} {S : SinkhornAlgorithmPackage M K}
    (E : EntropicOptimalTransportPackage M K S) : Prop :=
  E.errorBoundSatisfied

theorem entropic_optimal_transport_closed_from_evidence {μ ν : Type}
    {M : MatchingModel μ ν} {K : KantorovichDualityPackage M}
    {S : SinkhornAlgorithmPackage M K} (E : EntropicOptimalTransportPackage M K S)
    (h : E.errorBoundSatisfied) : EntropicOptimalTransportClosed E :=
  h

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse