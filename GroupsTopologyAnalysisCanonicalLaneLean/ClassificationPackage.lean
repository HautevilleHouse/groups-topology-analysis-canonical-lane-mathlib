import GroupsTopologyAnalysisCanonicalLaneLean.GroupsTopologyObjects

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure ClassifiedTopologicalGroup where
  group : Type u
  discrete : Prop
  compactLie : Prop
  solvable : Prop
  semisimple : Prop
  classificationComplete : Prop
  evidence : classificationComplete

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse