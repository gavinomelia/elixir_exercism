defmodule Meetup do
  def meetup(year, month, weekday, mode) do
    num_of_days = :calendar.last_day_of_the_month(year, month)
    corr_num = %{:first => 1, :second => 8, :third => 15,
    :fourth => 22, :last => num_of_days, :teenth => 13}
    get_day(year, month, weekday, corr_num[mode], mode)
  end

  def get_day(year, month, weekday, acc, mode) do
    week = %{1 => :monday, 2 => :tuesday, 3 => :wednesday, 4 => :thursday,
    5 => :friday, 6 => :saturday, 7 => :sunday}
    day = :calendar.day_of_the_week(year, month, acc)
    if week[day] == weekday do
      {year, month, acc}
    else
      get_day(year, month, weekday, operator(acc, mode), mode)
    end
  end

  def operator(num, :last), do: num - 1
  def operator(num, _), do: num + 1
end
