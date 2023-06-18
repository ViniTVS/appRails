class CreateJoinTableAutorLivro < ActiveRecord::Migration[7.0]
  def change
    create_join_table :autors, :livros do |t|
      # t.index [:autor_id, :livro_id]
      # t.index [:livro_id, :autor_id]
    end
  end
end
