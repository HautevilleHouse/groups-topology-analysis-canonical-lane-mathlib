import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure TopologicalGroupData where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  continuousMul : ContinuousMul carrier
  continuousInv : ContinuousInv carrier

structure GroupTopologyObject where
  data : TopologicalGroupData
  hausdorff : Prop
  locallyCompact : Prop
  conclusion : hausdorff ∧ locallyCompact

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse