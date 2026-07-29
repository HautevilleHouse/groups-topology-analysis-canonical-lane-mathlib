import GroupsTopologyAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure TopologicalGroupData where
  carrier : Type u
  group : Group carrier
  topology : TopologicalSpace carrier
  continuousMul : ContinuousMul carrier

default instance : TopologicalGroupData := {
  carrier := Unit
  group := instGroupUnit
  topology := instTopologicalSpaceUnit
  continuousMul := inferInstance
}

structure AdmittedTopologicalGroup (A : AdmissibleClass) where
  data : TopologicalGroupData
  compactnessCondition : Prop
  spinCondition : Prop
  hausdorff : Prop
  secondCountable : Prop
  
end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse