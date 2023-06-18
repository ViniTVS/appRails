class Sinopse < ApplicationRecord
  belongs_to :livro

  validates :livro, presence: true, uniqueness: true
  validates :texto, presence: true, length: { minimum: 20, maximum: 2000 }

  validates_associated :livro

  before_validation :corrige_tipos

  private

  def corrige_tipos
    texto = texto.to_s
    livro_id = livro_id.to_i
  end
end
