import MatchingModelsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MatchingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MatchingAdmittedObject where
  space : MatchingSpace
  agents : Type
  preferences : Prop
  stableMatchingExists : Prop
  conclusion : stableMatchingExists

structure MatchingEndgameState where
  object : MatchingAdmittedObject

def MatchingWitnessClosed (O : MatchingAdmittedObject) : Prop :=
  O.stableMatchingExists

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse