# == Schema Information
#
# Table name: contatos
#
#  id         :integer         not null, primary key
#  nome       :string(255)     not null
#  email      :string(255)     not null
#  telefone   :string(255)
#  celular    :string(255)
#  endereco   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Contato < ActiveRecord::Base

  validates_presence_of :nome, :email
  validates_uniqueness_of :email

  has_and_belongs_to_many :eventos, :uniq => true

end

