if !System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("roman.exs")
end

ExUnit.start
ExUnit.configure exclude: :pending, trace: false

defmodule RomanTest do
  use ExUnit.Case

  test "1" do
    assert Roman.numerals(1) == "I"
  end

  test "2" do
    assert Roman.numerals(2) == "II"
  end

  test "3" do
    assert Roman.numerals(3) == "III"
  end

  test "4" do
    assert Roman.numerals(4) == "IV"
  end

  test "5" do
    assert Roman.numerals(5) == "V"
  end

  test "6" do
    assert Roman.numerals(6) == "VI"
  end

  test "9" do
    assert Roman.numerals(9) == "IX"
  end

  test "27" do
    assert Roman.numerals(27) == "XXVII"
  end

  @tag :pending
  test "48" do
    assert Roman.numerals(48) == "XLVIII"
  end

  @tag :pending
  test "59" do
    assert Roman.numerals(59) == "LIX"
  end

  @tag :pending
  test "93" do
    assert Roman.numerals(93) == "XCIII"
  end

  @tag :pending
  test "141" do
    assert Roman.numerals(141) == "CXLI"
  end

  test "163" do
    assert Roman.numerals(163) == "CLXIII"
  end

  @tag :pending
  test "402" do
    assert Roman.numerals(402) == "CDII"
  end

  test "575" do
    assert Roman.numerals(575) == "DLXXV"
  end

  @tag :pending
  test "911" do
    assert Roman.numerals(911) == "CMXI"
  end

  @tag :pending
  test "1024" do
    assert Roman.numerals(1024) == "MXXIV"
  end

  test "3000" do
    assert Roman.numerals(3000) == "MMM"
  end
end
