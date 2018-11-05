defmodule GraphicalWeb.Schema do
  use Absinthe.Schema
  import_types(GraphicalWeb.Schema.Types)

  query do
    field :posts, list_of(:post) do
      resolve(&Graphical.PostResolver.all/2)
    end

    query do
      field :users, list_of(:user) do
        resolve(&Graphical.UserResolver.all/2)
      end
    end
  end
end
