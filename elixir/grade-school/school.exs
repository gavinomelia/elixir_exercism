defmodule School do

  def add(db, name, grade) do
    if !Map.has_key?(db, grade) do
      Map.put(db, grade, [name])
    else
      Map.update!(db, grade, fn(x) -> x ++ [name] end)
    end
  end

  def grade(db, grade) do
    if !Map.has_key?(db, grade) do
      []
    else
      db[grade]
    end
  end

  def sort(db) do
    db_list = Map.to_list(db)
    sorted_list = Enum.sort(db_list)
    Enum.map(sorted_list, fn({x, y}) -> {x, y |> Enum.sort} end)
  end
end
