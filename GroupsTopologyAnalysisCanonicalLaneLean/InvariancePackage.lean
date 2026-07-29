import GroupsTopologyAnalysisCanonicalLaneLean.GroupsTopologyObjects

namespace HautevilleHouse
namespace GroupsTopologyAnalysisCanonicalLaneLean

structure InvariantMeasure where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  measure : Measure group
  leftInvariant : ∀ g : group, Measure.map (λ h : group => g * h) measure = measure

structure HaarMeasureData where
  locallyCompactGroup : Prop
  existsHaarMeasure : ∃ (μ : Measure group), leftInvariant μ
  uniqueness : ∀ μ ν, leftInvariant μ → leftInvariant ν → ∃ c, μ = c • ν

default instance : HaarMeasureData := {
  locallyCompactGroup := False
  existsHaarMeasure := by
    refine ⟨0, ?_⟩
    intro g
    simp
  uniqueness := by
    intro μ ν hμ hν
    refine ⟨1, ?_⟩
    simp
}

end GroupsTopologyAnalysisCanonicalLaneLean
end HautevilleHouse