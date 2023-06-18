class CreateSinopses < ActiveRecord::Migration[7.0]
  def change
    create_table :sinopses do |t|
      t.text :texto
      t.belongs_to :livro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
