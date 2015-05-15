# idid fish

A re-implementation of [iDoneThis.com](http://idonethis.com) written for [fish shell](http://fishshell.com).
The "done list" is stored locally, and supports one-word tags denoted with `#`.

## Installation

The "done list" is stored locally, at `~/.idids` by default.
The fish functionality can be installed to `~/.config/fish/functions/` by running `make install`.

## Usage

1. Save an item with today's date: `idid "this"`
2. See what you've done today: `idid -w` or `idid --what`
3. See what tags you've used: `idid -t` or `idid --tag`
