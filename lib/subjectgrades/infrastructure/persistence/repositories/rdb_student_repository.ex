defmodule SubjectGrades.Infrastructure.RDBStudentRepository do
    @behaviour SubjectGrades.Core.StudentRepository

    alias SubjectGrades.Repo
    alias SubjectGrades.Persistence.Student
    alias SubjectGrades.Core.Student, as: StudentCore

    def save_student(student) do
        Repo.insert(Student.changeset(%Student{}, %{name: student.name}))
    end

    def get_student_by_id(id) do
        student = Repo.get(Student, id)
        |> Map.from_struct 
        |> Map.delete(:__meta__) 

        IO.puts(inspect(student))
        
        struct(StudentCore, student)
    end

end