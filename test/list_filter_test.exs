defmodule ListFilterTest do
  use ExUnit.Case

  test "filter empty list" do
    list = []
    expected_response = 0
    response = ListFilter.call(list)

    assert response == expected_response
  end

  test "filter list with no odd numbers" do
    list = ["abc", 2, :banana]
    expected_response = 0
    response = ListFilter.call(list)

    assert response == expected_response
  end

  test "filter list with string odd numbers" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]
    expected_response = 3
    response = ListFilter.call(list)

    assert response == expected_response
  end

  test "filter list with integers odd numbers" do
    list = [1, 3, 6, 43, "banana", 6, "abc"]
    expected_response = 3
    response = ListFilter.call(list)

    assert response == expected_response
  end

  test "filter list with mixed odd numbers" do
    list = [1, "3", 6, 43, "banana", 6, "abc"]
    expected_response = 3
    response = ListFilter.call(list)

    assert response == expected_response
  end
end
