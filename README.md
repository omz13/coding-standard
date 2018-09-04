# Coding Standard

 ![License](https://img.shields.io/github/license/mashape/apistatus.svg) [![Issues](https://img.shields.io/github/issues/omz13/omz13-coding-standard)](https://github.com/omz13/omz13-coding-standard/issues)

## Documentation

### Purpose

This _Coding Standard_ package contains a set of [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) rules.

The concept is to:
 - maintain consistency of code style
 - mitigate against writing stupid things.
 - play nicely with `phpcbf` in that as far as possible, errors are fixable. In other words, I am lazy and the computer should do as much as it can for me.

It goes without saying that this is built on the shoulders of the rulesets developed elsewhere and I have meerly melded things together, set some options, and in theory git things right so there are no clashes between competing rules, to do achieve what I needed.

#### _omz13-k3p_
There is one ruleset provided - _omz13-k3p_ - which is to be applied to [the plugins that I develop for Kirby3](https://github.com/search?q=omz13%2Fkirby3-). The resulting code style is based on my personal preferences for readability, so lots of spaces aroud things. Don't hate me for this, my eyes suck and I need the extra spacing. This ruleset is based on melding the following:
  - The complete `generic` ruleset
  - The complete `PSR-2` ruleset
  - Some of the `Squiz` ruleset
  - Some of the [Slevomat Coding Standard](https://github.com/slevomat/coding-standard).

#### Caveat

This project is very much a labor of love and a learning experience. It works for me. It may not work for you. YMMV.


### Installation

```sh
$ composer require --dev omz13/coding-standard
```

### Use

Invoke `./vendor/bin/phpcs --standard=omz13-k3p <source>` and watch the magic happen.

As far as possible errors can be fixed by `./vendor/bin/phpcbf --standard=omz13-k3p <source>`.

## Disclaimer

This rulesset is provided "as is" with no guarantee. Use it at your own risk and always test it yourself before using `phpcbf` to "fix" your code. If you find any issues, please [create a new issue](https://github.com/omz13/omz13-coding-standard/issues/new).

## License

[MIT](https://opensource.org/licenses/MIT)

### Buy Me A Coffee

To show your support for this project you are welcome to [buy me a coffee](https://buymeacoff.ee/omz13).
