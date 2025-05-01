require_relative '../../app/lib/calculator_string'

describe CalculatorString do
  describe '#calculate_sum' do
    context 'when input is an empty string' do
      it 'returns 0 for an empty string' do
        calculator = CalculatorString.new
        expect(calculator.calculate_sum('')).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number' do
        calculator = CalculatorString.new
        expect(calculator.calculate_sum('5')).to eq(5)
      end
    end

    context 'when input contains two numbers separated by comma' do
      it 'returns the sum of the numbers' do
        calculator = CalculatorString.new
        expect(calculator.calculate_sum('2,3')).to eq(5)
      end
    end

    context 'when input contains multiple numbers separated by comma' do
      it 'returns the sum of all numbers' do
        calculator = CalculatorString.new
        expect(calculator.calculate_sum('4,5,6,7,8,9,10')).to eq(49)
      end
    end
  end
end
