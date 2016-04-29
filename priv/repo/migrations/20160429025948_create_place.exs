defmodule Places.Repo.Migrations.CreatePlace do
  use Ecto.Migration

  def change do
    create table(:places) do
      add :name, :string
      add :description, :string

      timestamps
    end

  end
end
