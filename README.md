# lita-fortune

![](https://github.com/hortoncd/lita-fortune/workflows/Ruby/badge.svg)

`lita-fortune` is a handler for [Lita](https://github.com/jimmycuadra/lita) that returns a fortune cookie using the \*nix 'fortune' program.

## Installation

Add lita-fortune to your Lita instance's Gemfile:
``` ruby
gem 'lita-fortune'
```

Ensure that the appropriate fortune package is installed on the system running lita, preferably using automation to do the following.
```
Ubuntu:
sudo apt-get install fortune-mod
```

## Configuration

No Configuration.

## Usage

```
Lita: fortune
```

## License

[Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0)
