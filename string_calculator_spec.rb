require 'rspec'
require_relative 'string_calculator'

RSpec.describe 'StringCalculator' do
	describe '#add' do
		let(:calculator) { StringCalculator.new }

		it "returns 0 for an empty string" do
			expect(calculator.add("")).to eq(0)
		end

		it "returns the number itself for a single number" do
			expect(calculator.add("1")).to eq(1)
		end

		it "returns the sum of two numbers separated by a comma" do
			expect(calculator.add("1,5")).to eq(6)
		end

		it "returns the sum of multiple numbers separated by new lines" do
			expect(calculator.add("1\n2,3")).to eq(6)
		end

		it "returns the sum of numbers separated by a custom delimiter" do
			expect(calculator.add("//;\n1;2")).to eq(3)
		end
	end
end