defmodule SubjectGrades.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table (:student) do
      add :name, :string, null: false
    end
    create table (:subject) do
        add :name, :string, null: false
    end
    create table (:subjectgrade) do
        add :studentid, :integer, null: false
        add :subjectid, :integer, null: false
        add :grade, :float, null: false
    end
  end
end
