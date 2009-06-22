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

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Evento do
  before(:each) do
    @valid_attributes = {
      :descricao => "value for descricao",
      :data_hora => Time.now,
      :local => "value for local",
      :titulo => "value for titulo"
    }
  end

  it "should create a new instance given valid attributes" do
    Evento.create!(@valid_attributes)
  end
end
