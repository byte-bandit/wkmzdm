class Visitor < ActiveRecord::Base
  belongs_to :visit
  validates :name, presence: true, length: {minimum: 3, maximum: 32}
end
