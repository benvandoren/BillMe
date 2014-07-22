class CreateBillables < ActiveRecord::Migration
  def change
    create_table :billables do |t|
      t.decimal :hours

      t.timestamps
    end
  end
end
