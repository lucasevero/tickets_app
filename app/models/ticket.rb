class Ticket < ApplicationRecord
  belongs_to :teacher, class_name: 'User'
  belongs_to :student, class_name: 'User'

  validate :teacher?
  validate :student?

  def self.all_open
    where(solved: false)
  end

  def open?
    !solved
  end

  def solved?
    solved
  end

  private

  def teacher?
    return if teacher.teacher?

    errors.add(:teacher, "must be a teacher")
  end

  def student?
    return if student.student?

    errors.add(:student, "must be a student")
  end
end
