defmodule SubjectGrades.Controller.StudentController do
    use Plug.Router

    #TODO: Error handling and polish

    alias StudentGrades.Core.StudentBusinessService
    alias SubjectGrades.Core.ParserUtil

    plug Plug.Logger
    plug :match
    plug Plug.Parsers, parsers: [:json], json_decoder: Poison
    plug :dispatch
    
        
    post "/student" do
        IO.inspect conn
        body = conn.body_params
        StudentBusinessService.save_student(body["name"])
        send_resp(conn, 200, "Ok!!")
    end
    
    get "/student/:id" do
        numeric_id = ParserUtil.parse_string_to_integer(id)
        student = StudentBusinessService.get_student(numeric_id)

        conn
        |> put_resp_content_type("application/json")
        |> send_resp(200, ParserUtil.parse_to_json(student))
    end
        
    match _ do
        send_resp(conn, 404, "oops")
    end
    
end