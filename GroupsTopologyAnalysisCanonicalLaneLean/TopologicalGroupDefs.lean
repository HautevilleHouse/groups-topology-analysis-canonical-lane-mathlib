import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure TopologicalGroupPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  multiplicationContinuous : Continuous (fun (x : carrier × carrier) => x.1 * x.2)
  inversionContinuous : Continuous (fun (x : carrier) => x⁻¹)

structure TopologicalGroupEvidence (G : TopologicalGroupPackage) where
  multiplicationContinuousClosed : G.multiplicationContinuous
  inversionContinuousClosed : G.inversionContinuous

def TopologicalGroupClosed (G : TopologicalGroupPackage) : Prop :=
  G.multiplicationContinuous ∧ G.inversionContinuous

theorem topological_group_closed_from_evidence (G : TopologicalGroupPackage) (E : TopologicalGroupEvidence G) : TopologicalGroupClosed G := by
  exact And.intro E.multiplicationContinuousClosed E.inversionContinuousClosed

end HautevilleHouse
end GroupsTopologyAnalysisCanonicalLaneLean
