class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :short_name
      t.string :original_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
