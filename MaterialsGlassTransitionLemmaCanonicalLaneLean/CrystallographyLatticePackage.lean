import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGlassTransitionLemmaCanonicalLaneLean

structure CrystallographyLatticePackage where
  bravaisLatticeType : Type u
  unitCellVectors : List (ℝ × ℝ × ℝ)
  pointGroupSymmetries : Prop
  reciprocalLattice : Type v
  diffractionPatternClassified : Prop
  pointGroupSymmetriesClosed : pointGroupSymmetries
  diffractionPatternClassifiedClosed : diffractionPatternClassified

structure CrystallographyLatticeEvidence (C : CrystallographyLatticePackage) where
  pointGroupSymmetriesClosed : C.pointGroupSymmetries
  diffractionPatternClassifiedClosed : C.diffractionPatternClassified

def CrystallographyLatticeClosed (C : CrystallographyLatticePackage) : Prop :=
  C.pointGroupSymmetries ∧ C.diffractionPatternClassified

theorem crystallography_lattice_closed_from_evidence (C : CrystallographyLatticePackage)
    (E : CrystallographyLatticeEvidence C) : CrystallographyLatticeClosed C :=
  And.intro E.pointGroupSymmetriesClosed E.diffractionPatternClassifiedClosed

end MaterialsGlassTransitionLemmaCanonicalLaneLean
end HautevilleHouse
