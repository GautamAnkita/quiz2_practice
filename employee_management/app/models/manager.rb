class Manager < ApplicationRecord
  belongs_to :user
  has_many :employees, dependent: :nullify

  validates(
      :user,
      uniqueness: true
  )
end
