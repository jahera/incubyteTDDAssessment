require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe ".add" do
    #Simple String Calculator, Empty string returns 0
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns the sum of two numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    #Multiple numbers, comma delimited, returns the sum
    it "returns the sum of multiple numbers" do
      expect(StringCalculator.add("1,2,3")).to eq(6)
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    #New lines between numbers should be handled

    it "handles new lines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
      expect(StringCalculator.add("1\n2\n3")).to eq(6)
    end

    #Support different delimiters

    it "supports different delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//|\n1|2|3")).to eq(6)
    end

    #Negative numbers not allowed

    it "throws an exception for negative numbers" do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end
