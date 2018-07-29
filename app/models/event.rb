class Event < ApplicationRecord
  scope :active,-> {where(:year => Date.today.year).order("date")}
end
