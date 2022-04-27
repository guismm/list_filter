defmodule ListFilter do
  require Integer

  def call(list) do
    count_odd(list)
  end

  defp count_odd([]) do
    0
  end

  defp count_odd(list) do
    string_or_interger_list =
      Enum.filter(list, fn elem -> is_bitstring(elem) or is_integer(elem) end)

    parsed_list =
      Enum.map(string_or_interger_list, fn elem ->
        if is_bitstring(elem) and Integer.parse(elem) != :error do
          {val, _} = Integer.parse(elem)
          val
        else
          elem
        end
      end)

    Enum.count(parsed_list, fn elem -> Integer.is_odd(elem) end)
  end
end
