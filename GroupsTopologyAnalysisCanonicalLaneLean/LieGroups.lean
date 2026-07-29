import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsTopologyAnalysisCanonicalLaneLean.TopologicalGroupDefs

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure LieGroupPackage (G : TopologicalGroupPackage) where
  smoothManifold : SmoothManifold G.carrier
  multiplicationSmooth : Smooth (fun (x : G.carrier × G.carrier) => x.1 * x.2)
  inversionSmooth : Smooth (fun (x : G.carrier) => x⁻¹)
  lieAlgebra : Type u
  exponentialMap : lieAlgebra → G.carrier

structure LieGroupEvidence {G : TopologicalGroupPackage} (L : LieGroupPackage G) where
  multiplicationSmoothClosed : L.multiplicationSmooth
  inversionSmoothClosed : L.inversionSmooth

def LieGroupClosed {G : TopologicalGroupPackage} (L : LieGroupPackage G) : Prop :=
  L.multiplicationSmooth ∧ L.inversionSmooth

theorem lie_group_closed_from_evidence {G : TopologicalGroupPackage} (L : LieGroupPackage G) (E : LieGroupEvidence L) : LieGroupClosed L := by
  exact And.intro E.multiplicationSmoothClosed E.inversionSmoothClosed

end HautevilleHouse
end GroupsTopologyAnalysisCanonicalLaneLean
