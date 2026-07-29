import canonicalLaneMathlib.AdmissibleClass
import GroupsTopologyAnalysisCanonicalLaneLean.DualityBridge
import GroupsTopologyAnalysisCanonicalLaneLean.InvariancePrinciples

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

def GroupTopologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem group_topology_endgame (A : AdmissibleClass) :
    GroupTopologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse