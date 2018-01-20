defmodule Mango.Repo.Migrations.AddCheckoutFieldsToOrders do
  use Ecto.Migration

  def change do
    alter table(:order) do
      add :comments, :text
      add :customer_id, references(:customers)
      add :customer_name, :string
      add :email, :string
      add :residence_area, :string
    end
    create index(:order, [:customer_id])
  end
end
