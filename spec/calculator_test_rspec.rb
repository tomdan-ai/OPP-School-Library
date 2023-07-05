require './calculator.rb'
require 'rspec'

RSpec.describe Calculator do
    describe 'Add' do
        it 'Returns a number when two are added' do
            calculator = Calculator.new
            results = calculator.add(4,5)
            expect(results).to eq(9)
        end
    end
end    