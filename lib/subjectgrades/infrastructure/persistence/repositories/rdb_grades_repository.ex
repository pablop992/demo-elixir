defmodule SubjectGrades.Infrastructure.RDBGradesRepository do
    @behaviour SubjectGrades.Core.GradesRepository

    alias SubjectGrades.Repo
    alias SubjectGrades.Persistence.Grade

    def save_grades(grades) do
        grades 
        |> Enum.each(fn (grade) -> 
            Repo.insert(
                Grade.changeset(%Grade{}, 
                %{student_id: grade.student_id, subject_id: grade.subject_id, grade: grade.grade})) end)
    end
end