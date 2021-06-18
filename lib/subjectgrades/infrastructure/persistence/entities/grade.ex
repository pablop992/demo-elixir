defmodule SubjectGrades.Persistence.Grade do
    use Ecto.Schema
    import Ecto.Changeset
    
    schema "subjectgrade" do
        field :studentid, :integer
        field :subjectid, :integer
        field :grade, :float
    end

    def changeset(struct, params) do
        struct
        |> cast(params, [:studentid, :subjectid, :grade])
        |> validate_required([:studentid, :subjectid, :grade])
        |> validate_number(:grade, greater_than_or_equal_to: 0, less_than_or_equal_to: 5)
    end

end