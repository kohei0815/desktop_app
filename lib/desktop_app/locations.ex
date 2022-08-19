defmodule DesktopApp.Locations do
  alias DesktopApp.Repo
  alias DesktopApp.Locations.Location

  def get_locations() do
    Repo.all(Location)
  end

  def get_location(id) do
    Repo.get(Location, id)
  end

  def create(attrs) do
    %Location{}
    |> Location.changeset(attrs)
    |> Repo.insert()
  end

  def update_location(location, attrs) do
    location
    |> Location.changeset(attrs)
    |> Repo.update()
  end

  def delete_location(location) do
    Repo.delete(location)
  end
end
