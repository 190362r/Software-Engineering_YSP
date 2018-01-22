class CreateUses < ActiveRecord::Migration[5.1]
  def change
    create_table :uses do |t|
      t.string :facility
      t.integer :situation
      t.datetime :time
      t.string :userID

      t.timestamps
    end
  end
end
