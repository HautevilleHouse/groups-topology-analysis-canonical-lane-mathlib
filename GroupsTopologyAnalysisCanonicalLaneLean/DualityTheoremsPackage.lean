import GroupsTopologyAnalysisCanonicalLaneLean.GroupsTopologyObjects

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure PontryaginDualityData where
  group : Type u
  dualGroup : Type u
  pairing : group → dualGroup → Circle
  continuousPairing : Continuous (Function.uncurry pairing)
  isomorphism : group ≃+ dualGroup

structure DualityTheoremProof where
  locallyCompactAbelian : Prop
  pontryaginDualityHolds : Prop
  evidence : pontryaginDualityHolds

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse