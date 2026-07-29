import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure HaarMeasurePackage where
  group : Type u
  topology : TopologicalSpace group
  groupStruct : Group group
  locallyCompact : Prop
  haarMeasure : Type u
  leftInvariant : Prop
  positiveOnOpenSets : Prop
  finiteOnCompacts : Prop
  uniqueness : Prop

structure HaarMeasureEvidence (H : HaarMeasurePackage) where
  locallyCompactClosed : H.locallyCompact
  leftInvariantClosed : H.leftInvariant
  positiveOnOpenSetsClosed : H.positiveOnOpenSets
  finiteOnCompactsClosed : H.finiteOnCompacts
  uniquenessClosed : H.uniqueness

def HaarMeasureClosed (H : HaarMeasurePackage) : Prop :=
  H.locallyCompact ∧ H.leftInvariant ∧ H.positiveOnOpenSets ∧
  H.finiteOnCompacts ∧ H.uniqueness

theorem haar_measure_closed_from_evidence (H : HaarMeasurePackage)
    (E : HaarMeasureEvidence H) : HaarMeasureClosed H := by
  exact And.intro E.locallyCompactClosed
    (And.intro E.leftInvariantClosed
      (And.intro E.positiveOnOpenSetsClosed
        (And.intro E.finiteOnCompactsClosed E.uniquenessClosed)))

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse