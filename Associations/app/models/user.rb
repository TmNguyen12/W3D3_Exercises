class User < ApplicationRecord
  has_many(
    :enrollments,
    class_name: 'Enrollment',
    foreign_key: :student_id,
    primary_key: :id
  )

  has_many(
    :courses,
    # class_name: 'Course',
    through: :enrollments,
    source: :course
  )
end
