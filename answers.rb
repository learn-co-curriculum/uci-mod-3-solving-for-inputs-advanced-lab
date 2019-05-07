require_relative './lib/registrar.rb'
require_relative './lib/course.rb'
require_relative './lib/student.rb'

def create_school
  # Return a new instance of school with a name and adress of your choosing
  School.new('John Jay', 'Cross River')
end

def set_up_a_course
  # Use the method above to create a school
  # Use this new School instance to:
  # - Create a position
  # - Hire a teacher to that position
  # - Create a course for the teacher to teach
  # Return instance of school
  school = create_school
  school.create_position('History Teacher', '$45,000', 'Teacher', false)
  school.hire_teacher('John', 'Smith', 'john.smith@johnjayhighschool.edu', school.positions['History Teacher'])
  school.create_course('Early Civilization', 'History', school.teachers[0])
  school
end

def create_five_students
  # Use create_school to create an instance of School
  # Create a registrar
  # Add five instances of Student to the new school using the hashes of data above
  # Don't enroll students in any classes, but make sure they're on the Registrar!
  # Return the registrar
  school = create_school
  registrar = Registrar.new(school)
  registrar.enroll_student("Ada", "Lovelace", "ada@techpioneer.com")
  registrar.enroll_student("Hedy", "Lamarr", 'hedy@techpioneer.com')
  registrar.enroll_student("Alan", "Turing", "alan@techpioneer.com")
  registrar.enroll_student("Grace", "Hopper", "grace@techpioneer.com")
  registrar.enroll_student("Katherine", "Johnson", "katherine@techpioneer.com")
  registrar
end
