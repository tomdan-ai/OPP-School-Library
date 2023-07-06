require_relative '../person'
require_relative '../students'

RSpec.describe Student do
  let(:student) { Student.new(1, 16, 'Classroom 1') }

  describe '#play_hooky' do
    it "returns the play hooky message" do
      expect(student.play_hooky).to eq('¯\\_(ツ)_/¯')
    end
  end

  describe '#to_h' do
    it "returns a hash representation of the student" do
      expect(student.to_h).to eq({
        'type' => 'Student',
        'id' => 1,
        'age' => 16,
        'parent_permission' => true,
        'name' => 'Unknown'
      })
    end
  end
end
