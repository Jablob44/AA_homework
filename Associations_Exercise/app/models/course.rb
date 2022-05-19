class Course < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :enrolled_students, 
        through: :enrollments, 
        source: :user
    has_one :prereq,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course
    has_many :instructor, 
        through: :enrollments, 
        foreign_key: :instructor_id,
        source: :user
end
