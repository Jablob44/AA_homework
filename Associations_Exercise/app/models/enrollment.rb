class Enrollment < ApplicationRecord

      has_many :user,
         primary_key: :id,
         foreign_key: :student_id,
         class_name: :User

      has_many :course,
         primary_key: :id,
         foreign_key: :course_id,
         class_name: :Course
      
end
