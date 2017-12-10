defmodule Mango.Repo.Migrations.CreateOrder do
  use Ecto.Migration

  def change do
    create table(:order) do
      add :status, :string
      add :total, :decimal
      add :line_items, {:array, :map}

      timestamps()
    end

  end
end
