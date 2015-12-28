class CreateStates < ActiveRecord::Migration
  def change
    create table :states do |t|
      t.string :name

      t.timestamps(null: false)
    end
  end
end
