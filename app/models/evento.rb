# == Schema Information
#
# Table name: eventos
#
#  id         :integer         not null, primary key
#  descricao  :text            not null
#  data_hora  :datetime        not null
#  local      :string(255)     not null
#  titulo     :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#

class Evento < ActiveRecord::Base

  validates_presence_of :descricao, :data_hora, :local, :titulo
  has_and_belongs_to_many :contatos, :uniq => true

end

