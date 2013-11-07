class Student < ActiveRecord::Base
  #has_many :courses
  #has_many :classes, foreign_key: :student_id, class_name: Course
  has_many :course_registrations, dependent_destroy: true
  has_many :courses, through: :course_registrations
end
