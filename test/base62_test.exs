defmodule Base62Test do
  use ExUnit.Case, async: true

  import Base62

  test :encode do
    assert encode(0) == "0"
    assert encode(1) == "1"
    assert encode(2) == "2"
    assert encode(3) == "3"
    assert encode(4) == "4"
    assert encode(5) == "5"
    assert encode(6) == "6"
    assert encode(7) == "7"
    assert encode(8) == "8"
    assert encode(9) == "9"
    assert encode(10) == "A"
    assert encode(11) == "B"
    assert encode(12) == "C"
    assert encode(13) == "D"
    assert encode(14) == "E"
    assert encode(15) == "F"
    assert encode(16) == "G"
    assert encode(17) == "H"
    assert encode(18) == "I"
    assert encode(19) == "J"
    assert encode(20) == "K"
    assert encode(21) == "L"
    assert encode(22) == "M"
    assert encode(23) == "N"
    assert encode(24) == "O"
    assert encode(25) == "P"
    assert encode(26) == "Q"
    assert encode(27) == "R"
    assert encode(28) == "S"
    assert encode(29) == "T"
    assert encode(30) == "U"
    assert encode(31) == "V"
    assert encode(32) == "W"
    assert encode(33) == "X"
    assert encode(34) == "Y"
    assert encode(35) == "Z"
    assert encode(36) == "a"
    assert encode(37) == "b"
    assert encode(38) == "c"
    assert encode(39) == "d"
    assert encode(40) == "e"
    assert encode(41) == "f"
    assert encode(42) == "g"
    assert encode(43) == "h"
    assert encode(44) == "i"
    assert encode(45) == "j"
    assert encode(46) == "k"
    assert encode(47) == "l"
    assert encode(48) == "m"
    assert encode(49) == "n"
    assert encode(50) == "o"
    assert encode(51) == "p"
    assert encode(52) == "q"
    assert encode(53) == "r"
    assert encode(54) == "s"
    assert encode(55) == "t"
    assert encode(56) == "u"
    assert encode(57) == "v"
    assert encode(58) == "w"
    assert encode(59) == "x"
    assert encode(60) == "y"
    assert encode(61) == "z"
    assert encode(62) == "10"
    assert encode(100) == "1c"
    assert encode(124) == "20"
  end

  test :decode do
    assert decode("0") == { :ok, 0 }
    assert decode("1") == { :ok, 1 }
    assert decode("2") == { :ok, 2 }
    assert decode("3") == { :ok, 3 }
    assert decode("4") == { :ok, 4 }
    assert decode("5") == { :ok, 5 }
    assert decode("6") == { :ok, 6 }
    assert decode("7") == { :ok, 7 }
    assert decode("8") == { :ok, 8 }
    assert decode("9") == { :ok, 9 }
    assert decode("A") == { :ok, 10 }
    assert decode("B") == { :ok, 11 }
    assert decode("C") == { :ok, 12 }
    assert decode("D") == { :ok, 13 }
    assert decode("E") == { :ok, 14 }
    assert decode("F") == { :ok, 15 }
    assert decode("G") == { :ok, 16 }
    assert decode("H") == { :ok, 17 }
    assert decode("I") == { :ok, 18 }
    assert decode("J") == { :ok, 19 }
    assert decode("K") == { :ok, 20 }
    assert decode("L") == { :ok, 21 }
    assert decode("M") == { :ok, 22 }
    assert decode("N") == { :ok, 23 }
    assert decode("O") == { :ok, 24 }
    assert decode("P") == { :ok, 25 }
    assert decode("Q") == { :ok, 26 }
    assert decode("R") == { :ok, 27 }
    assert decode("S") == { :ok, 28 }
    assert decode("T") == { :ok, 29 }
    assert decode("U") == { :ok, 30 }
    assert decode("V") == { :ok, 31 }
    assert decode("W") == { :ok, 32 }
    assert decode("X") == { :ok, 33 }
    assert decode("Y") == { :ok, 34 }
    assert decode("Z") == { :ok, 35 }
    assert decode("a") == { :ok, 36 }
    assert decode("b") == { :ok, 37 }
    assert decode("c") == { :ok, 38 }
    assert decode("d") == { :ok, 39 }
    assert decode("e") == { :ok, 40 }
    assert decode("f") == { :ok, 41 }
    assert decode("g") == { :ok, 42 }
    assert decode("h") == { :ok, 43 }
    assert decode("i") == { :ok, 44 }
    assert decode("j") == { :ok, 45 }
    assert decode("k") == { :ok, 46 }
    assert decode("l") == { :ok, 47 }
    assert decode("m") == { :ok, 48 }
    assert decode("n") == { :ok, 49 }
    assert decode("o") == { :ok, 50 }
    assert decode("p") == { :ok, 51 }
    assert decode("q") == { :ok, 52 }
    assert decode("r") == { :ok, 53 }
    assert decode("s") == { :ok, 54 }
    assert decode("t") == { :ok, 55 }
    assert decode("u") == { :ok, 56 }
    assert decode("v") == { :ok, 57 }
    assert decode("w") == { :ok, 58 }
    assert decode("x") == { :ok, 59 }
    assert decode("y") == { :ok, 60 }
    assert decode("z") == { :ok, 61 }
    assert decode("10") == { :ok, 62 }
    assert decode("1c") == { :ok, 100 }
    assert decode("20") == { :ok, 124 }
    assert decode("zzzzzz") == { :ok, 56_800_235_583 }
  end

  test :decode! do
    assert decode!("0") == 0
    assert decode!("1") == 1
    assert decode!("2") == 2
    assert decode!("3") == 3
    assert decode!("4") == 4
    assert decode!("5") == 5
    assert decode!("6") == 6
    assert decode!("7") == 7
    assert decode!("8") == 8
    assert decode!("9") == 9
    assert decode!("A") == 10
    assert decode!("B") == 11
    assert decode!("C") == 12
    assert decode!("D") == 13
    assert decode!("E") == 14
    assert decode!("F") == 15
    assert decode!("G") == 16
    assert decode!("H") == 17
    assert decode!("I") == 18
    assert decode!("J") == 19
    assert decode!("K") == 20
    assert decode!("L") == 21
    assert decode!("M") == 22
    assert decode!("N") == 23
    assert decode!("O") == 24
    assert decode!("P") == 25
    assert decode!("Q") == 26
    assert decode!("R") == 27
    assert decode!("S") == 28
    assert decode!("T") == 29
    assert decode!("U") == 30
    assert decode!("V") == 31
    assert decode!("W") == 32
    assert decode!("X") == 33
    assert decode!("Y") == 34
    assert decode!("Z") == 35
    assert decode!("a") == 36
    assert decode!("b") == 37
    assert decode!("c") == 38
    assert decode!("d") == 39
    assert decode!("e") == 40
    assert decode!("f") == 41
    assert decode!("g") == 42
    assert decode!("h") == 43
    assert decode!("i") == 44
    assert decode!("j") == 45
    assert decode!("k") == 46
    assert decode!("l") == 47
    assert decode!("m") == 48
    assert decode!("n") == 49
    assert decode!("o") == 50
    assert decode!("p") == 51
    assert decode!("q") == 52
    assert decode!("r") == 53
    assert decode!("s") == 54
    assert decode!("t") == 55
    assert decode!("u") == 56
    assert decode!("v") == 57
    assert decode!("w") == 58
    assert decode!("x") == 59
    assert decode!("y") == 60
    assert decode!("z") == 61
    assert decode!("10") == 62
    assert decode!("1c") == 100
    assert decode!("20") == 124
    assert decode!("zzzzzz") == 56_800_235_583
  end
end
