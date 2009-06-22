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

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Contato do

  describe "em validações" do

    before do
      Factory(:contato)
    end

    it('precisa validar presença de nome') { should validate_presence_of(:nome) }
    it('precisa validar presença de e-mail') { should validate_presence_of(:email) }
    it('precisa validar unicidade de e-mail') { should validate_uniqueness_of(:email) }

  end

end

