class AddCompToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :comp, :boolean, default: false
  end
end
