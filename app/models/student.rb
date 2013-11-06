class Student < ActiveRecord::Base
  has_many :courses
  has_many :classes, foreign_key: :student_id, class_name: Course
end
