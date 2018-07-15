class Designation < ApplicationRecord
    validates(:title, presence: true)
end
