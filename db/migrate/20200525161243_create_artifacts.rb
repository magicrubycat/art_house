class CreateArtifacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :artist
      t.integer :year
      t.text :description
      t.integer :starting_value
      t.boolean :sold
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
