import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure HomogeneousSpace where
  G : TopologicalGroup
  X : Type u
  action : G.groupType → X → X
  actionContinuous : Continuous (fun p : G.groupType × X => action p.1 p.2)
  actionComp : ∀ g h : G.groupType, ∀ x : X, action (G.groupMul g h) x = action g (action h x)
  actionOne : ∀ x : X, action G.groupOne x = x
  transitive : ∀ x y : X, ∃ g : G.groupType, action g x = y

structure HomogeneousSpaceEvidence (H : HomogeneousSpace) where
  actionContinuousClosed : H.actionContinuous
  actionCompClosed : H.actionComp
  actionOneClosed : H.actionOne
  transitiveClosed : H.transitive

def HomogeneousSpaceClosed (H : HomogeneousSpace) : Prop :=
  H.actionContinuous ∧ H.actionComp ∧ H.actionOne ∧ H.transitive

theorem homogeneous_space_closed_from_evidence (H : HomogeneousSpace) (E : HomogeneousSpaceEvidence H) : HomogeneousSpaceClosed H := by
  exact And.intro E.actionContinuousClosed
    (And.intro E.actionCompClosed
      (And.intro E.actionOneClosed E.transitiveClosed))

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse