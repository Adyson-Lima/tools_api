class Tool < ApplicationRecord
  validates :name, :description, presence: true
end
