defmodule CashHoldWeb.Router do
  use CashHoldWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CashHoldWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end