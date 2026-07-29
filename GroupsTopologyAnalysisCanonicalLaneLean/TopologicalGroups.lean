import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure TopologicalGroup where
  groupType : Type u
  topology : TopologicalSpace groupType
  groupMul : groupType → groupType → groupType
  groupInv : groupType → groupType
  groupOne : groupType
  groupMulContinuous : Continuous (fun p : groupType × groupType => groupMul p.1 p.2)
  groupInvContinuous : Continuous groupInv
  groupAssoc : ∀ a b c : groupType, groupMul (groupMul a b) c = groupMul a (groupMul b c)
  groupOneMul : ∀ a : groupType, groupMul groupOne a = a
  groupMulOne : ∀ a : groupType, groupMul a groupOne = a
  groupInvMul : ∀ a : groupType, groupMul (groupInv a) a = groupOne
  groupMulInv : ∀ a : groupType, groupMul a (groupInv a) = groupOne

structure TopologicalGroupEvidence (G : TopologicalGroup) where
  groupMulContinuousClosed : G.groupMulContinuous
  groupInvContinuousClosed : G.groupInvContinuous
  groupAssocClosed : G.groupAssoc
  groupOneMulClosed : G.groupOneMul
  groupMulOneClosed : G.groupMulOne
  groupInvMulClosed : G.groupInvMul
  groupMulInvClosed : G.groupMulInv

def TopologicalGroupClosed (G : TopologicalGroup) : Prop :=
  G.groupMulContinuous ∧ G.groupInvContinuous ∧ G.groupAssoc ∧
  G.groupOneMul ∧ G.groupMulOne ∧ G.groupInvMul ∧ G.groupMulInv

theorem topological_group_closed_from_evidence (G : TopologicalGroup) (E : TopologicalGroupEvidence G) :
    TopologicalGroupClosed G := by
  exact And.intro E.groupMulContinuousClosed
    (And.intro E.groupInvContinuousClosed
      (And.intro E.groupAssocClosed
        (And.intro E.groupOneMulClosed
          (And.intro E.groupMulOneClosed
            (And.intro E.groupInvMulClosed E.groupMulInvClosed)))))

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse