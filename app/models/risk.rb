class Risk < ActiveRecord::Base
  attr_accessible :description, :from_date, :from_time, :location_id, :to_date, :to_time, :type_id
  belongs_to :type
  belongs_to :location
end
