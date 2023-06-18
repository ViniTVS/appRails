class CreateEditoras < ActiveRecord::Migration[7.0]
  def change
    create_table :editoras do |t|
      t.string :nome

      t.timestamps
    end
  end
end
