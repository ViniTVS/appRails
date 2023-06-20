class Autor < ApplicationRecord
  has_and_belongs_to_many :livro


  # validações
  validates :nome, presence: true, length: { minimum: 2, maximum: 500 }, uniqueness: true

end
