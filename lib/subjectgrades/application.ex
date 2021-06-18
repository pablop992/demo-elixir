defmodule SubjectGrades.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SubjectGrades.Repo,
      { 
        Plug.Cowboy, 
        scheme: :http, 
        plug: SubjectGrades.Controller.StudentController, 
        options: [ port: 8080] 
      }
    ]

    opts = [strategy: :one_for_one, name: SubjectGrades.Supervisor]
    Supervisor.start_link(children, opts)
  end
end