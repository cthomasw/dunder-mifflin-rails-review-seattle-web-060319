class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def full_name
    self.first_name.to_s + " " + self.last_name.to_s
  end

end
