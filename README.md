# Base62 [![License](https://img.shields.io/hexpm/l/base62.svg?style=flat-square)](https://github.com/igas/base62/blob/master/LICENSE)[![Build Status](https://img.shields.io/travis/igas/base62.svg?style=flat-square)](https://travis-ci.org/igas/base62)

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

# [License](https://github.com/igas/base62/blob/master/LICENSE)

Released under the MIT License.
