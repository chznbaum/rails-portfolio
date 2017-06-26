class Technology < ApplicationRecord
  belongs_to :portfolio

  validates_presence_of :name
end
