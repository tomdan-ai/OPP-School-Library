require 'rspec'
require './trimmer_decorator'
require './decorator'
require './nameable'

RSpec.describe TrimmerDecorator do
  let(:nameable) { double('Nameable', correct_name: 'TheSubClassThatNeedToBeCheck') }
  subject { described_class.new(nameable) }

  describe '#correct_name' do
    it 'Cuts the characters to a maximum of ten' do
      expect(nameable).to receive(:correct_name).and_return('TheSubClas')
      expect(subject.correct_name).to eq('TheSubClas')
    end
  end
end
