import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Algebra.CompactOpen

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure StructureTheoremPackage where
  groupType : Type u
  isLocallyCompact : Prop
  isCompactOpen : Prop
  maxCompactSubgroup : Prop
  quotientIsConnected : Prop

structure StructureTheoremEvidence (S : StructureTheoremPackage) where
  isLocallyCompactClosed : S.isLocallyCompact
  isCompactOpenClosed : S.isCompactOpen
  maxCompactSubgroupClosed : S.maxCompactSubgroup
  quotientIsConnectedClosed : S.quotientIsConnected

def StructureTheoremClosed (S : StructureTheoremPackage) : Prop :=
  S.isLocallyCompact ∧ S.isCompactOpen ∧ S.maxCompactSubgroup ∧ S.quotientIsConnected

theorem structure_theorem_closed_from_evidence
    (S : StructureTheoremPackage) (E : StructureTheoremEvidence S) :
    StructureTheoremClosed S := by
  exact And.intro E.isLocallyCompactClosed
    (And.intro E.isCompactOpenClosed
      (And.intro E.maxCompactSubgroupClosed E.quotientIsConnectedClosed))

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse
