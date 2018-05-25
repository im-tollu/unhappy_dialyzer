# UnhappyDialyzer

This project is created in support of the [GitHub ticket](https://github.com/elixir-lang/elixir/issues/7708).
It demonstrates, how Elixir Protocols make Dialyzer unhappy about built-in types, for which there is no `defimpl`.

In the project's `mix.exs` you can switch protocol consolidation on/off at lines 32-33.

## Execution

First, go the the project's folder and run
```
$ mix do deps.get, deps.compile
```

After that You can reproduce observed issue with
```
$ mix do clean, dialyzer
```
