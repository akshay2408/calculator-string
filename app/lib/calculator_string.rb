class CalculatorString
  def calculate_sum(string_numbers)
    return 0 if string_numbers.empty?
    return string_numbers.to_i if string_numbers.match(/^\d+$/)
  end
end