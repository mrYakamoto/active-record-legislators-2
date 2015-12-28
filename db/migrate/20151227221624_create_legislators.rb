class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :name_suffix
      t.string :party
      t.string :in_office
      t.string :gender
      t.string :phone
      t.string :fax
      t.string :website
      t.string :twitter_id

      t.integer :party_id
      t.integer :state_id

      t.timestamps(null: false)
    end
  end
end
