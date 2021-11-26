class Customer < ApplicationRecord
  belongs_to :user
  validates :name, :phone, :expire_at, :sex, :cpf, :status, presence: true
end
