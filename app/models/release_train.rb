class ReleaseTrain < ApplicationRecord
  has_and_belongs_to_many :system_services
  has_many :histories
end
