defmodule SubjectGrades.Core.StudentRepository do

    alias SubjectGrades.Core.Student

    @callback save_student(%Student{}) :: any
    @callback get_student_by_id(integer()) :: %Student{}
    
end