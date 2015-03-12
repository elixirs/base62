defmodule Base62 do
  use CustomBase, '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  @moduledoc """
  This module provides data encoding and decoding functions for base62 alphabet:

  | Value | Encoding | Value | Encoding | Value | Encoding | Value | Encoding |
  |------:|---------:|------:|---------:|------:|---------:|------:|---------:|
  |      0|         0|     16|         G|     32|         W|     48|         m|
  |      1|         1|     17|         H|     33|         X|     49|         n|
  |      2|         2|     18|         I|     34|         Y|     50|         o|
  |      3|         3|     19|         J|     35|         Z|     51|         p|
  |      4|         4|     20|         K|     36|         a|     52|         q|
  |      5|         5|     21|         L|     37|         b|     53|         r|
  |      6|         6|     22|         M|     38|         c|     54|         s|
  |      7|         7|     23|         N|     39|         d|     55|         t|
  |      8|         8|     24|         O|     40|         e|     56|         u|
  |      9|         9|     25|         P|     41|         f|     57|         v|
  |     10|         A|     26|         Q|     42|         g|     58|         w|
  |     11|         B|     27|         R|     43|         h|     59|         x|
  |     12|         C|     28|         S|     44|         i|     60|         y|
  |     13|         D|     29|         T|     45|         j|     61|         z|
  |     14|         E|     30|         U|     46|         k|       |          |
  |     15|         F|     31|         V|     47|         l|       |          |
  """

  @doc """
  Encode base 10 integer to base 62 char from alphabet above.
  """
  def encode(integer)

  @doc """
  Decode base 62 char from alphabet above to base 10 integer.

  Returns tuple `{:ok, number}` if binary can be converted using alphabet,
  `:error` instead.
  """
  def decode(binary)

  @doc """
  Same as `decode/1` except this function return just number or raise error if
  bianry can not be converted.
  """
  def decode!(binary)
end
