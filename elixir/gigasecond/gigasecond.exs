defmodule Gigasecond do
	def from(date_time) do
		current_seconds = :calendar.datetime_to_gregorian_seconds(date_time)
		total_seconds = current_seconds + 1000000000
		:calendar.gregorian_seconds_to_datetime(total_seconds)
	end
end
