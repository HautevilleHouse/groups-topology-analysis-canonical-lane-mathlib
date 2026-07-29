import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsTopologyAnalysisCanonicalLaneLean.PontryaginDuality

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

def ConstrainedGroupsTopologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_groups_topology_endgame (A : AdmissibleClass) : ConstrainedGroupsTopologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end GroupsTopologyAnalysisCanonicalLaneLean
