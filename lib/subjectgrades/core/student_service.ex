defmodule StudentGrades.Core.StudentBusinessService do

    alias SubjectGrades.Core.Student

    @grades_repository Application.get_env(:subjectgrades, :grades_repository)
    @student_repository Application.get_env(:subjectgrades, :student_repository)

    def save_student (name) do
        @student_repository.save_student(%Student{name: name})
    end

    def get_student (id) do
        @student_repository.get_student_by_id(id)
    end

end