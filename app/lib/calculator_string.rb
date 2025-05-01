class CalculatorString
  def calculate_sum(string_numbers)
    return 0 if string_numbers.empty?
    string_numbers.split(',').sum(&:to_i)
  end
end