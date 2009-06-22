require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ContatosController do

  describe 'GET index' do

    before do
      @contatos = [ mock_model(Contato, :email => 'exemplo@exemplo.com.br'),
                    mock_model(Contato) ]
      Contato.stub!(:paginate).with(:page => '1',
                                    :per_page => 30).and_return( @contatos )
    end

    def do_get( options = {})
      get :index, options
    end

    it 'deve ser um sucesso' do
      do_get
      response.should be_success
    end

    it 'deve colocar os contatos na variável @contatos' do
      do_get
      assigns[:contatos].should == @contatos
    end

    it 'deve renderizar a ação index.html.erb' do
      do_get
      response.should render_template(:index)
    end

    it 'deve chamar o método :paginate com "1" e 30' do
      Contato.should_receive(:paginate).with(:page => '1',
                                             :per_page => 30).and_return( @contatos )
      do_get
    end

  end

end

