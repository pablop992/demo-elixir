defmodule SubjectGrades.Core.ParserUtil do
    
    def parse_to_json(content) do
        case Poison.encode(content) do
            {:ok, encoded} -> encoded
            {:error, _} -> raise "Cannot parse content"
        end 
    end

    def parse_string_to_integer(string_number) do

        case Integer.parse(string_number) do
            {parsed, _} -> parsed
            :error -> raise "Cannot parse string to integer"
        end
    end
end