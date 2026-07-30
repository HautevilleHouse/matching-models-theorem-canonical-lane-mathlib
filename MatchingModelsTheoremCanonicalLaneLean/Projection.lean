import MatchingModelsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def matchingProjection : Projection MatchingEndgameState :=
  { toFun := fun x => x
    idempotent := by intro x; rfl
  }

theorem matching_projection_idempotent (x : MatchingEndgameState) :
    matchingProjection.toFun (matchingProjection.toFun x) = matchingProjection.toFun x :=
  matchingProjection.idempotent x

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse