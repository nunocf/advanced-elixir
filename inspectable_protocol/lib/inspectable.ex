defprotocol Inspectable do
  @fallback_to_any true
  def dump(element)
end

defimpl Inspectable, for: BitString do
  def dump(string) do
    "STRING: #{string}"
  end
end

defimpl Inspectable, for: Integer do
  def dump(0) do
    "ZeRO!"
  end

  def dump(integer) do
    "INTEGER: #{integer}"
  end
end

defimpl Inspectable, for: Point do
  def dump(%{x: x, y: y, z: z}) do
    "(#{x}, #{y}, #{z})"
  end
end

defimpl Inspectable, for: Any do
  def dump(_) do
    "A random element"
  end
end
