import canonicalLaneMathlib.AdmissibleClass
import GroupsTopologyAnalysisCanonicalLaneLean.GroupTopologyObject

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure LocallyCompactAbelianGroupData (G : TopologicalGroupData) where
  abelian : Prop
  locallyCompact : Prop
  structureTheorem : Prop
  classificationEndpoint : Prop

structure ClassificationEvidence (G : TopologicalGroupData) (L : LocallyCompactAbelianGroupData G) where
  abelianClosed : L.abelian
  locallyCompactClosed : L.locallyCompact
  structureTheoremClosed : L.structureTheorem
  classificationEndpointClosed : L.classificationEndpoint

def ClassificationClosed (G : TopologicalGroupData) (L : LocallyCompactAbelianGroupData G) : Prop :=
  L.structureTheorem ∧ L.classificationEndpoint

theorem classification_closed_from_evidence (G : TopologicalGroupData)
    (L : LocallyCompactAbelianGroupData G) (E : ClassificationEvidence G L) :
    ClassificationClosed G L := by
  exact And.intro E.structureTheoremClosed E.classificationEndpointClosed

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse