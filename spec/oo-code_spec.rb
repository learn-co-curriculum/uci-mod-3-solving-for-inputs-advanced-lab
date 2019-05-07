require 'spec_helper'

describe 'Unfamiliar Object Oriented Code' do
  describe 'answers.rb' do
    it '`create_school` returns an instance of School' do
      expect(create_school).to be_a(School)

      expect(School).to receive(:new)
      create_school
    end

    it '`set_up_a_course`' do
      new_school = set_up_a_course

      expect(new_school.positions.keys.length).to eq(1)
      expect(new_school.teachers.length).to eq(1)
      expect(new_school.courses.length).to eq(1)

      expect(new_school.courses[new_school.courses.keys[0]].teacher).to eq(new_school.teachers[0])
    end

    it '`create_five_students` returns an instance of Registrar with five Student instances enrolled' do

      expect(create_five_students).to be_a(Registrar)
      expect(create_five_students.students).to be_an(Array)
      expect(create_five_students.students.length).to eq(5)
      expect(create_five_students.students).to all(be_a(Student))
    end

  end
end
