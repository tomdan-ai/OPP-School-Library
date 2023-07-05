require 'rspec'
require './teachers'

RSpec.describe Teacher do
  let(:teacher) { Teacher.new(1, 35, 'Math', name: 'Mr. Smith') }

  describe '#initialize' do
    it 'creates a new teacher object' do
      expect(teacher).to be_an_instance_of(Teacher)
    end

    it 'defaults parent_permission to true' do
      expect(teacher.parent_permission).to be_truthy
    end
  end

  describe '#can_use_services?' do
    it 'returns true for a teacher' do
      expect(teacher.can_use_services?).to be_truthy
    end
  end

  describe '#to_h' do
    it 'returns a hash representation of the teacher object' do
      expected_hash = {
        'type' => 'Teacher',
        'id' => 1,
        'age' => 35,
        'parent_permission' => true,
        'name' => 'Mr. Smith',
        'specialization' => 'Math'
      }
      expect(teacher.to_h).to eq(expected_hash)
    end
  end
end
