defmodule Base62 do
  def encode(0), do: "0"
  def encode(1), do: "1"
  def encode(2), do: "2"
  def encode(3), do: "3"
  def encode(4), do: "4"
  def encode(5), do: "5"
  def encode(6), do: "6"
  def encode(7), do: "7"
  def encode(8), do: "8"
  def encode(9), do: "9"
  def encode(10), do: "A"
  def encode(11), do: "B"
  def encode(12), do: "C"
  def encode(13), do: "D"
  def encode(14), do: "E"
  def encode(15), do: "F"
  def encode(16), do: "G"
  def encode(17), do: "H"
  def encode(18), do: "I"
  def encode(19), do: "J"
  def encode(20), do: "K"
  def encode(21), do: "L"
  def encode(22), do: "M"
  def encode(23), do: "N"
  def encode(24), do: "O"
  def encode(25), do: "P"
  def encode(26), do: "Q"
  def encode(27), do: "R"
  def encode(28), do: "S"
  def encode(29), do: "T"
  def encode(30), do: "U"
  def encode(31), do: "V"
  def encode(32), do: "W"
  def encode(33), do: "X"
  def encode(34), do: "Y"
  def encode(35), do: "Z"
  def encode(36), do: "a"
  def encode(37), do: "b"
  def encode(38), do: "c"
  def encode(39), do: "d"
  def encode(40), do: "e"
  def encode(41), do: "f"
  def encode(42), do: "g"
  def encode(43), do: "h"
  def encode(44), do: "i"
  def encode(45), do: "j"
  def encode(46), do: "k"
  def encode(47), do: "l"
  def encode(48), do: "m"
  def encode(49), do: "n"
  def encode(50), do: "o"
  def encode(51), do: "p"
  def encode(52), do: "q"
  def encode(53), do: "r"
  def encode(54), do: "s"
  def encode(55), do: "t"
  def encode(56), do: "u"
  def encode(57), do: "v"
  def encode(58), do: "w"
  def encode(59), do: "x"
  def encode(60), do: "y"
  def encode(61), do: "z"
  def encode(number) do
    encode(div(number, 62)) <> encode(rem(number, 62))
  end

  def decode("0"), do: 0
  def decode("1"), do: 1
  def decode("2"), do: 2
  def decode("3"), do: 3
  def decode("4"), do: 4
  def decode("5"), do: 5
  def decode("6"), do: 6
  def decode("7"), do: 7
  def decode("8"), do: 8
  def decode("9"), do: 9
  def decode("A"), do: 10
  def decode("B"), do: 11
  def decode("C"), do: 12
  def decode("D"), do: 13
  def decode("E"), do: 14
  def decode("F"), do: 15
  def decode("G"), do: 16
  def decode("H"), do: 17
  def decode("I"), do: 18
  def decode("J"), do: 19
  def decode("K"), do: 20
  def decode("L"), do: 21
  def decode("M"), do: 22
  def decode("N"), do: 23
  def decode("O"), do: 24
  def decode("P"), do: 25
  def decode("Q"), do: 26
  def decode("R"), do: 27
  def decode("S"), do: 28
  def decode("T"), do: 29
  def decode("U"), do: 30
  def decode("V"), do: 31
  def decode("W"), do: 32
  def decode("X"), do: 33
  def decode("Y"), do: 34
  def decode("Z"), do: 35
  def decode("a"), do: 36
  def decode("b"), do: 37
  def decode("c"), do: 38
  def decode("d"), do: 39
  def decode("e"), do: 40
  def decode("f"), do: 41
  def decode("g"), do: 42
  def decode("h"), do: 43
  def decode("i"), do: 44
  def decode("j"), do: 45
  def decode("k"), do: 46
  def decode("l"), do: 47
  def decode("m"), do: 48
  def decode("n"), do: 49
  def decode("o"), do: 50
  def decode("p"), do: 51
  def decode("q"), do: 52
  def decode("r"), do: 53
  def decode("s"), do: 54
  def decode("t"), do: 55
  def decode("u"), do: 56
  def decode("v"), do: 57
  def decode("w"), do: 58
  def decode("x"), do: 59
  def decode("y"), do: 60
  def decode("z"), do: 61
  def decode(binary) do
    binary
    |> String.split("", trim: true)
    |> Enum.reverse
    |> decode(0)
    |> round
  end

  defp decode([last], step) do
    decode(last) * :math.pow(62, step)
  end
  defp decode([head|tail], step) do
    decode(head) * :math.pow(62, step) + decode(tail, step + 1)
  end
end
