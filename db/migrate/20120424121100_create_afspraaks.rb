class CreateAfspraaks < ActiveRecord::Migration
  def change
    create_table :afspraaks do |t|
      t.string :naam
      t.string :datum
      t.string :behandeling
      t.string :medewerker

      t.timestamps
    end
  end
end
