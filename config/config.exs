import Config

config :subjectgrades, SubjectGrades.Repo,
  database: "subjectgrades",
  username: "postgres",
  password: "myPassword",
  hostname: "localhost",
  port: "5432"

config :subjectgrades, ecto_repos: [SubjectGrades.Repo]

config :subjectgrades, :grades_repository, 
  SubjectGrades.Infrastructure.RDBGradesRepository
config :subjectgrades, :student_repository, 
  SubjectGrades.Infrastructure.RDBStudentRepository