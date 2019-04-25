defmodule DistilleryExample.Repo do
  use Ecto.Repo,
    otp_app: :distillery_example,
    adapter: Ecto.Adapters.Postgres
end
