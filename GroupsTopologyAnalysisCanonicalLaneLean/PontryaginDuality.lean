import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure PontryaginDualityPackage where
  group : Type u
  topology : TopologicalSpace group
  locallyCompactAbelian : Prop
  dualGroup : Type u
  dualTopology : TopologicalSpace dualGroup
  dualLocallyCompactAbelian : Prop
  bidualIsomorphism : Prop
  naturality : Prop

structure PontryaginDualityEvidence (P : PontryaginDualityPackage) where
  locallyCompactAbelianClosed : P.locallyCompactAbelian
  dualLocallyCompactAbelianClosed : P.dualLocallyCompactAbelian
  bidualIsomorphismClosed : P.bidualIsomorphism
  naturalityClosed : P.naturality

def PontryaginDualityClosed (P : PontryaginDualityPackage) : Prop :=
  P.locallyCompactAbelian ∧ P.dualLocallyCompactAbelian ∧
  P.bidualIsomorphism ∧ P.naturality

theorem pontryagin_duality_closed_from_evidence (P : PontryaginDualityPackage)
    (E : PontryaginDualityEvidence P) : PontryaginDualityClosed P := by
  exact And.intro E.locallyCompactAbelianClosed
    (And.intro E.dualLocallyCompactAbelianClosed
      (And.intro E.bidualIsomorphismClosed E.naturalityClosed))

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse