require 'rspec'
require './students'
require './classroom'

RSpec.describe Classroom do
  let(:classroom) { Classroom.new('Math Class') }
  let(:student) { Student.new(1, 16, classroom, name: 'John Doe') }

  describe '#initialize' do
    it 'creates a new classroom object' do
      expect(classroom).to be_an_instance_of(Classroom)
    end

    it 'sets the label correctly' do
      expect(classroom.label).to eq('Math Class')
    end

    it 'initializes an empty students array' do
      expect(classroom.students).to be_an_instance_of(Array)
      expect(classroom.students).to be_empty
    end
  end

  describe '#add_student' do
    it 'adds a student to the students array' do
      expect { classroom.add_student(student) }.to change { classroom.students.length }.by(1)
      expect(classroom.students.first).to eq(student)
    end
  end
end
