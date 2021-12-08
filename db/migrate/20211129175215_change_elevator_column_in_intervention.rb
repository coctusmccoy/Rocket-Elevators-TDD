class ChangeElevatorColumnInIntervention < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :elevator_id, :bigint, null:true
  end
end
