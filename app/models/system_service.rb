class SystemService < ApplicationRecord
  has_and_belongs_to_many :release_trains
end
