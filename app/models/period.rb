class Period < ActiveRecord::Base
  attr_accessible :from_date, :from_time, :risk_id, :to_date, :to_time, :probability, :impact
  belongs_to :risk
  
  
  validates :probability, :impact, :inclusion => 0..4
  
  @impact_strings = [
                     "Negligible",
                     "Minor",
                     "Major",
                     "Severe",
                     "Catastrophic"
                    ]

  @probability_strings = [
                          "Very Low",
                          "Low",
                          "Equally likely",
                          "High",
                          "Very High"
                         ]
                        
  
  def self.impact_strings
    @impact_strings
  end

  def self.probability_strings
    @probability_strings
  end
  
  def self.impact_to_text(number)
    impact_strings[number]
  end

  def self.probability_to_text(number)
    probability_strings[number]
  end
end
