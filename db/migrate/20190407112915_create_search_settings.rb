class CreateSearchSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :search_settings do |t|
      t.string :word

      t.timestamps
    end
  end
end
