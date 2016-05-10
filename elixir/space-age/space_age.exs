defmodule SpaceAge do
  def age_on(planet, seconds) do
    planet_years = %{:earth => 1, :mercury => 0.2408467, :venus => 0.61519726, :mars => 1.8808158,
    :jupiter => 11.862615, :saturn => 29.447498, :uranus => 84.016846, :neptune => 164.79132}
    seconds / (planet_years[planet] * 365.25 * 24 * 60 * 60)
  end
end
