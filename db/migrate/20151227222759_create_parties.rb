class CreateParties < ActiveRecord::Migration
  def change
    create table :parties do |t|
      t.string :name

      t.timestamps(null: false)
    end
  end
end
