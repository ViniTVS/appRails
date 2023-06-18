json.extract! livro, :id, :ano, :nome, :editora_id, :created_at, :updated_at
json.url livro_url(livro, format: :json)
