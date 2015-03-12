# Base62 [![Version](https://img.shields.io/hexpm/v/base62.svg?style=flat-square)](https://hex.pm/packages/base62)[![License](https://img.shields.io/hexpm/l/base62.svg?style=flat-square)](https://github.com/igas/base62/blob/master/LICENSE)[![Build Status](https://img.shields.io/travis/igas/base62.svg?style=flat-square)](https://travis-ci.org/igas/base62)[![Issues](https://img.shields.io/github/issues/igas/base62.svg?style=flat-square)](https://github.com/igas/base62/issues)[![Downloads](https://img.shields.io/hexpm/dt/base62.svg?style=flat-square)](https://hex.pm/packages/base62)[![Donation](https://img.shields.io/gratipay/igas.svg?style=flat-square)](https://gratipay.com/igas/)

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

### Decode!

```
iex> Base62.decode!("100")
3844

iex> Base62.decode!("igas")
10650166

iex> Base62.decode!("EvilMartians")
776957886790921093120
```

### Decode

```
iex> Base62.decode("42")
{:ok, 250}

iex> Base62.decode("Игас")
:error

iex> Base62.decode("Elixir")
{:ok, 13531063449}
```

# [License](https://github.com/igas/base62/blob/master/LICENSE)

Released under the MIT License.
