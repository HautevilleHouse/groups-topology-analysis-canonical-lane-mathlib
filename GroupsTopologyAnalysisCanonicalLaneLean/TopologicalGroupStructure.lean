import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure TopologicalGroupStructure where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  multiplicationContinuous : Continuous (fun p : carrier × carrier => p.1 * p.2)
  inversionContinuous : Continuous (fun x : carrier => x⁻¹)

structure TopologicalGroupEvidence (G : TopologicalGroupStructure) where
  multiplicationContinuousClosed : G.multiplicationContinuous
  inversionContinuousClosed : G.inversionContinuous

def TopologicalGroupClosed (G : TopologicalGroupStructure) : Prop :=
  G.multiplicationContinuous ∧ G.inversionContinuous

theorem topological_group_closed_from_evidence (G : TopologicalGroupStructure)
    (E : TopologicalGroupEvidence G) : TopologicalGroupClosed G := by
  exact And.intro E.multiplicationContinuousClosed E.inversionContinuousClosed

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse