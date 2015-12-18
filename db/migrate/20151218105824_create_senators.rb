class CreateSenators < ActiveRecord::Migration
  def change
    create_table :senators do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :name_suffix
      t.string :party
      t.string :state
      t.string :in_office
      t.string :gender
      t.string :phone
      t.string :fax
      t.string :website
      t.string :twitter_id

      t.timestamps(null: false)
    end
  end
end
