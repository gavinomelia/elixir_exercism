defmodule Gigasecond do
	def from(date_time) do
		seconds_in_date = :calendar.datetime_to_gregorian_seconds(date_time)
		total_seconds = seconds_in_date + 1000000000
		:calendar.gregorian_seconds_to_datetime(total_seconds)
	end
end
