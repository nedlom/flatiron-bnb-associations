class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :address
      t.string :listing_type
      t.float :price
      t.belongs_to :neighborhood, foreign_key: true
      t.belongs_to :host, foreign_key: true

      t.timestamps
    end
  end
end
