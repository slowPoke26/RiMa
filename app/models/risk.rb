class Risk < ActiveRecord::Base
  attr_accessible :description, :from_date, :from_time, :location_id, :to_date, :to_time, :type_id, :periods_attributes
  belongs_to :type
  belongs_to :location
  has_many :periods
  
  accepts_nested_attributes_for :periods
  
  def self.search(search)
    if search
      search_condition = "%" + search + "%"
      find(:all, :condition => ['description LIKE ?', search_condition])
    else
      find(:all)
    end
  end
  
end
