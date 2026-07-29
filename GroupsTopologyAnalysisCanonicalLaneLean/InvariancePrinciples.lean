import canonicalLaneMathlib.AdmissibleClass
import GroupsTopologyAnalysisCanonicalLaneLean.GroupTopologyObject

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure HaarMeasurePackage (G : TopologicalGroupData) where
  haarMeasure : Type u
  leftInvariant : Prop
  regular : Prop
  uniqueUpToScale : Prop
  haarEvidence : leftInvariant ∧ regular ∧ uniqueUpToScale

structure HaarmeasureEvidence {G : TopologicalGroupData} (H : HaarMeasurePackage G) where
  haarEvidenceClosed : H.haarEvidence

def InvarianceClosed {G : TopologicalGroupData} (H : HaarMeasurePackage G) : Prop :=
  H.leftInvariant ∧ H.regular ∧ H.uniqueUpToScale

theorem invariance_closed_from_evidence {G : TopologicalGroupData}
    (H : HaarMeasurePackage G) (E : HaarmeasureEvidence H) :
    InvarianceClosed H := by
  exact E.haarEvidenceClosed

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse