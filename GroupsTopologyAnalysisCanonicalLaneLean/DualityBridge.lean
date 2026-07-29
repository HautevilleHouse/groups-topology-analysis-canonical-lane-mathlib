import canonicalLaneMathlib.AdmissibleClass
import GroupsTopologyAnalysisCanonicalLaneLean.GroupTopologyObject

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure PontryaginDualityPackage (G : TopologicalGroupData) where
  dualGroup : TopologicalGroupData
  bidualIsomorphism : Type u
  isomorphismContinuous : Prop
  isomorphismGroupHom : Prop
  isomorphismBijection : Prop
  dualityEstablished : isomorphismContinuous ∧ isomorphismGroupHom ∧ isomorphismBijection

structure DualizabilityEvidence {G : TopologicalGroupData} (P : PontryaginDualityPackage G) where
  dualityEstablishedClosed : P.dualityEstablished

def PontryaginDualityClosed {G : TopologicalGroupData} (P : PontryaginDualityPackage G) : Prop :=
  P.dualityEstablished

theorem pontryagin_duality_closed_from_evidence {G : TopologicalGroupData}
    (P : PontryaginDualityPackage G) (E : DualizabilityEvidence P) :
    PontryaginDualityClosed P := by
  exact E.dualityEstablishedClosed

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse