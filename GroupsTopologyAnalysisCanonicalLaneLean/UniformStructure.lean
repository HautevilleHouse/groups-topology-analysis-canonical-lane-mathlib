import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.UniformSpace.Basic

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure UniformStructurePackage where
  group : Type u
  leftUniformity : UniformSpace group
  rightUniformity : UniformSpace group
  twoSidedUniformity : UniformSpace group
  uniformitiesAgree : Prop
  topologicalCompatibility : Prop

structure UniformStructureEvidence (U : UniformStructurePackage) where
  uniformitiesAgreeClosed : U.uniformitiesAgree
  topologicalCompatibilityClosed : U.topologicalCompatibility

def UniformStructureClosed (U : UniformStructurePackage) : Prop :=
  U.uniformitiesAgree ∧ U.topologicalCompatibility

theorem uniform_structure_closed_from_evidence
    (U : UniformStructurePackage) (E : UniformStructureEvidence U) :
    UniformStructureClosed U := by
  exact And.intro E.uniformitiesAgreeClosed E.topologicalCompatibilityClosed

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse
