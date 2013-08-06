class AddProbabilityImpactToPeriods < ActiveRecord::Migration
  def change
    add_column :periods, :probability, :integer
    add_column :periods, :impact, :integer
  end
end
