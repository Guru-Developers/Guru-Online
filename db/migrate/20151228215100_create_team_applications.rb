class CreateTeamApplications < ActiveRecord::Migration
  def change
    create_table :team_applications do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.date :date_of_birth, null: false
      t.boolean :attends_unc
      t.string :github_url
      t.string :linkedin_url
      t.string :website_url
      t.text :resume, null: false
      t.text :cover_letter

      t.timestamps null: false
    end
  end
end
