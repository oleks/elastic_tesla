# ElasticTesla

An Elixir library for talking with ElasticSearch. This library is
heavily inspired by [Elastic](https://hex.pm/packages/elastic), but
uses [Tesla](https://hex.pm/packages/tesla/) instead of the *recently
deprecated* [HTTPotion](https://hex.pm/packages/httpotion).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elastic_tesla` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elastic_tesla, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elastic_tesla](https://hexdocs.pm/elastic_tesla).

## Git Hooks

This repository uses [`pre-commit`](https://pre-commit.com/) to
provide [Git
Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks),
which check that things are in a sensible state on commit and push,
respectively.

`pre-commit` is language-agnostic, but is itself written in Python.
Install it using `pip`, and install the hooks for this repository as
follows:

```bash
$ cd elastic_tesla
$ pre-commit install -t pre-commit
$ pre-commit install -t pre-push
```

The first time you run the Git push hook, Dialyzer will spend some
time creating an initial PLT file. Things will look brighter from
there.
