defmodule SubjectGrades.Core.GradesRepository do
    
    alias SubjectGrades.Core.Grade

    @callback save_grades(list(%Grade{})) :: any
    @callback get_grades_by_student(integer()) :: list(%Grade{})

end