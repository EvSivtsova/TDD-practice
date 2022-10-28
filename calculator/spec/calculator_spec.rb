require 'calculator.rb'

describe Calculator do
  describe "#add" do
    it "returns a sum of 5 and 10" do
      calculator = Calculator.new

      expect(calculator.add(5, 10)).to eq(15)
    end
    it "returns a sum of 9 and 8" do
      calculator = Calculator.new

      expect(calculator.add(9, 8)).to eq(17)
    end
    it "returns a sum of 9 and 10" do
      calculator = Calculator.new

      expect(calculator.add(9, 10)).to eq(19)
    end
  end
end