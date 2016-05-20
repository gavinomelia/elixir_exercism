defmodule Meetup do
  @week Enum.zip(~w[monday tuesday wednesday thursday friday saturday sunday]a, (1..7))
  def meetup(year, month, weekday, mode) do
    all_days_in(year, month)
    |> filter_by_day_name(weekday)
    |> select(mode)
    |> format(year, month)
  end

  def all_days_in(year, month) do
    num_of_days = :calendar.last_day_of_the_month(year, month)
    {year, month, 1..num_of_days}
  end

  def filter_by_day_name({year, month, days}, weekday) do
    Enum.filter(days, fn(x) -> :calendar.day_of_the_week(year, month, x) == @week[weekday] end)
  end

  def select(filtered_days, :first), do: Enum.at(filtered_days, 0)
  def select(filtered_days, :second), do: Enum.at(filtered_days, 1)
  def select(filtered_days, :third), do: Enum.at(filtered_days, 2)
  def select(filtered_days, :fourth), do: Enum.at(filtered_days, 3)
  def select(filtered_days, :last), do: List.last(filtered_days)
  def select(filtered_days, :teenth) do
    Enum.find(filtered_days, fn(x) -> Enum.member?(13..19, x) end)
  end

  def format(day, year, month), do: {year, month, day}
end
