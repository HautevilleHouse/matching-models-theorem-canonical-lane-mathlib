import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure MatchingSpace where
  carrier : Type
  marketType : Type
  payoffFamily : Type
  tradingStrategies : Type
  riskNeutralMeasure : Prop
  completeMarket : Prop

structure MatchingAdmittedObject where
  space : MatchingSpace
  preferenceDistribution : Prop
  matchingFunctionExists : Prop
  allocationOptimal : Prop
  conclusion : matchingFunctionExists ∧ preferenceDistribution

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse
