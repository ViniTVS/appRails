class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.integer :ano
      t.string :nome
      t.belongs_to :editora, null: false, foreign_key: true

      t.timestamps
    end
  end
end
