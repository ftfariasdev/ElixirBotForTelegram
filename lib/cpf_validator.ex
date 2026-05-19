defmodule CpfValidator do
  def valid?(cpf) do
    cpf =
      cpf
      |> String.replace(~r/\D/, "")

    cond do
      String.length(cpf) != 11 ->
        false

      repeated_digits?(cpf) ->
        false

      true ->
        validate_digits(cpf)
    end
  end

  defp repeated_digits?(cpf) do
    String.chars(cpf)
    |> Enum.uniq()
    |> length() == 1
  end

  defp validate_digits(cpf) do
    numbers =
      cpf
      |> String.graphemes()
      |> Enum.map(&String.to_integer/1)

    first_digit =
      calculate_digit(Enum.take(numbers, 9), 10)

    second_digit =
      calculate_digit(Enum.take(numbers, 10), 11)

    first_digit == Enum.at(numbers, 9) and
      second_digit == Enum.at(numbers, 10)
  end

  defp calculate_digit(numbers, weight) do
    total =
      numbers
      |> Enum.reduce({0, weight}, fn num, {sum, w} ->
        {sum + num * w, w - 1}
      end)
      |> elem(0)

    remainder = rem(total * 10, 11)

    if remainder == 10 do
      0
    else
      remainder
    end
  end
end