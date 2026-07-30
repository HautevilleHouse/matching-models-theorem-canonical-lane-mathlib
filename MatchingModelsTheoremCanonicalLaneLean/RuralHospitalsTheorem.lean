import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MatchingModelsTheoremCanonicalLaneLean

structure RuralHospitalsPackage where
  hospitalHasVacancy : Prop
  hospitalHasFilledPositions : Prop
  setOfUnmatchedAgentsInvariant : Prop
  populationOfMatchedDoctorsInvariant : Prop
  ruralHospitalConclusion : Prop

structure RuralHospitalsEvidence (R : RuralHospitalsPackage) where
  hospitalHasVacancyClosed : R.hospitalHasVacancy
  hospitalHasFilledPositionsClosed : R.hospitalHasFilledPositions
  setOfUnmatchedAgentsInvariantClosed : R.setOfUnmatchedAgentsInvariant
  populationOfMatchedDoctorsInvariantClosed : R.populationOfMatchedDoctorsInvariant
  ruralHospitalConclusionClosed : R.ruralHospitalConclusion

def RuralHospitalsClosed (R : RuralHospitalsPackage) : Prop :=
  R.hospitalHasVacancy ∧ R.hospitalHasFilledPositions ∧
  R.setOfUnmatchedAgentsInvariant ∧ R.populationOfMatchedDoctorsInvariant ∧
  R.ruralHospitalConclusion

theorem rural_hospitals_closed_from_evidence
    (R : RuralHospitalsPackage) (E : RuralHospitalsEvidence R) :
    RuralHospitalsClosed R := by
  exact And.intro E.hospitalHasVacancyClosed
    (And.intro E.hospitalHasFilledPositionsClosed
      (And.intro E.setOfUnmatchedAgentsInvariantClosed
        (And.intro E.populationOfMatchedDoctorsInvariantClosed
          E.ruralHospitalConclusionClosed)))

end MatchingModelsTheoremCanonicalLaneLean
end HautevilleHouse