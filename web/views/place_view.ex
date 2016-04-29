defmodule Places.PlaceView do
  use Places.Web, :view

  def render("index.json", %{places: places}) do
    %{data: render_many(places, Places.PlaceView, "place.json")}
  end

  def render("show.json", %{place: place}) do
    %{data: render_one(place, Places.PlaceView, "place.json")}
  end

  def render("place.json", %{place: place}) do
    %{id: place.id,
      name: place.name,
      description: place.description}
  end
end
