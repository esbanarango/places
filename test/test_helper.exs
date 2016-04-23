ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Places.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Places.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Places.Repo)

