defprotocol UnhappyDialyzer do
  @fallback_to_any true
  def hello(greeting)
end

defimpl UnhappyDialyzer, for: Any do
  def hello(_) do
    "Not implemented"
  end
end

defimpl UnhappyDialyzer, for: Atom do
  def hello(greeting) do
    "Hello, #{greeting}!"
  end
end

defimpl UnhappyDialyzer, for: BitString do
  defdelegate hello(greeting), to: UnhappyDialyzer.Any
end
