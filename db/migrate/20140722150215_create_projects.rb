class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :client_name
      t.string :project_name
      t.decimal :rate

      t.timestamps
    end
  end
end
