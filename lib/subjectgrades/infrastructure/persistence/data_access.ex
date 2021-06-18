defmodule SubjectGrades.Repo do
  use Ecto.Repo,
    otp_app: :subjectgrades,
    adapter: Ecto.Adapters.Postgres
end
