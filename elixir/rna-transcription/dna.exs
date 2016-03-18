defmodule DNA do
  def to_rna(dna) do
    dna_rna_map = %{?G => ?C, ?C => ?G, ?T => ?A, ?A => ?U}
    Enum.map(dna, fn(x) -> dna_rna_map[x] end)
  end
end
