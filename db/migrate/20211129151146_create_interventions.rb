class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :author
      t.string :result
      t.string :report
      t.string :status

      t.string :start
      t.string :end
    end
  end
end
