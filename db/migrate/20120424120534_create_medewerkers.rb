class CreateMedewerkers < ActiveRecord::Migration
  def change
    create_table :medewerkers do |t|
      t.string :naam
      t.string :achternaam
      t.string :email

      t.timestamps
    end
  end
end
