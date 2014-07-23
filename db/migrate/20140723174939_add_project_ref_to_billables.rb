class AddProjectRefToBillables < ActiveRecord::Migration
  def change
    add_reference :billables, :project, index: true
  end
end
