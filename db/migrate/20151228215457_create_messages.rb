class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email, null: false
      t.text :message, null: false

      t.timestamps null: false
    end
  end
end
