defmodule School do

  def add(db, name, grade) do
    if Map.has_key?(db, grade) do
      Map.update!(db, grade, fn(x) -> x ++ [name] end)
    else
      Map.put(db, grade, [name])
    end
  end

  def grade(db, grade) do
    if Map.has_key?(db, grade) do
      db[grade]
    else
      []
    end
  end

  def sort(db) do
    db
    |> Map.to_list
    |> Enum.map(fn({x, y}) -> {x, y |> Enum.sort} end)
  end
end
