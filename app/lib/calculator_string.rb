class CalculatorString
  def calculate_sum(string_numbers)
    return "Invalid Input" if invalid_input?(string_numbers)

    return 0 if string_numbers.empty?
    string_numbers.split(/,|\n/).sum(&:to_i)
  end
  
  private

  def invalid_input?(numbers)
    numbers.end_with?("\\n")
  end
end