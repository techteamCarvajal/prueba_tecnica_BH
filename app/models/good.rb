class Good < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :type_good, presence: true
  validates :initial_value, presence: true
  validates :current_value, presence: true
  validates :purchase_date, presence: true
  validates :last_modification_date, presence: true
end



