import GroupsTopologyAnalysisCanonicalLaneLean.GroupsTopologyObjects

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure HeisenbergGroup where
  carrier : Type u
  group : Group carrier
  topology : TopologicalSpace carrier
  continuousMul : ContinuousMul carrier
  lieAlgebra : Type v
  exponentialMap : lieAlgebra → carrier
  stoneVonNeumannTheorem : Prop
  irreducibleRepresentationExists : Prop

default instance : HeisenbergGroup := {
  carrier := Unit
  group := instGroupUnit
  topology := instTopologicalSpaceUnit
  continuousMul := inferInstance
  lieAlgebra := PUnit
  exponentialMap := λ _ => ()
  stoneVonNeumannTheorem := True
  irreducibleRepresentationExists := True
}

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse