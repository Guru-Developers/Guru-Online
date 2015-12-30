class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :company_name
      t.string :company_url
      t.text :message, null: false
      t.text :pitch_deck

      t.timestamps null: false
    end
  end
end
