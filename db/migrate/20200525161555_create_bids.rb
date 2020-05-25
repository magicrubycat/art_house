class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :value
      t.references :user, null: false, foreign_key: true
      t.references :artifact, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
