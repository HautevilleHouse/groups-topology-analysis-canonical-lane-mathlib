import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsTopologyAnalysisCanonicalLaneLean.TopologicalGroupDefs

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure PeterWeylPackage (G : TopologicalGroupPackage) where
  compactGroup : Prop
  irreducibleReps : Type u
  matrixCoefficients : G.carrier → Matrix (Fin n) (Fin n) ℂ
  denseInL2 : Prop
  orthonormalBasis : Prop

structure PeterWeylEvidence {G : TopologicalGroupPackage} (P : PeterWeylPackage G) where
  compactGroupClosed : P.compactGroup
  denseInL2Closed : P.denseInL2
  orthonormalBasisClosed : P.orthonormalBasis

def PeterWeylClosed {G : TopologicalGroupPackage} (P : PeterWeylPackage G) : Prop :=
  P.compactGroup ∧ P.denseInL2 ∧ P.orthonormalBasis

theorem peter_weyl_closed_from_evidence {G : TopologicalGroupPackage} (P : PeterWeylPackage G) (E : PeterWeylEvidence P) : PeterWeylClosed P := by
  exact And.intro E.compactGroupClosed (And.intro E.denseInL2Closed E.orthonormalBasisClosed)

end HautevilleHouse
end GroupsTopologyAnalysisCanonicalLaneLean
