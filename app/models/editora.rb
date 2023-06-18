class Editora < ApplicationRecord
  has_many :livro, dependent: :destroy
  # validações
  validates :nome, presence: true, length: { minimum: 2, maximum: 500 }, uniqueness: true

  before_validation :corrige_tipos

  private

  def corrige_tipos
    nome = nome.to_s
  end
end
