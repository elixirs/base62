# Base62

Base62 encoder/decoder in pure Elixir.

## Usage

### Encode

```
iex> Base62.encode(28)
"S"

iex> Base62.encode(44)
"i"

iex> Base62.encode(280)
"4W"
```

### Decode

```
iex> Base62.decode("100")
3844

iex> Base62.decode("igas")
10650166

iex> Base62.decode("EvilMartians")
776957886790921093120
```
