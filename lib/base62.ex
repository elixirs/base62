defmodule Base62 do
  @base62_digits '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'

  for { digit, idx } <- Enum.with_index(@base62_digits) do
    def encode(unquote(idx)), do: unquote(<< digit >>)
  end
  def encode(number) do
    encode(div(number, 62)) <> encode(rem(number, 62))
  end

  for { digit, idx } <- Enum.with_index(@base62_digits) do
    def decode(unquote(<< digit >>)), do: unquote(idx)
  end
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
