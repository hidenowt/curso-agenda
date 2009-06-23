module GeradorDeControladores

  module ClassMethods

    def gerar_para ( model )

      nome = model.name
      plural = model.name.pluralize.underscore
      singular = model.name.underscore

      metodos = %Q!
  before_filter :carrega_pagina, :only => :index
  before_filter :carrega_#{singular}, :only => [:edit, :new, :create, :update, :destroy]

  def index
    @#{plural} = #{nome}.paginate( :page => @pagina,
                                  :per_page => @por_pagina )
  end

  def new; end
  def edit; end

  def create
    cria_ou_atualiza 'adicionado', :new
  end

  def update
    cria_ou_atualiza 'alterado', :edit
  end

  def destroy
    @#{singular}.destroy
    respond_to do |format|
      format.js do
        render :update do |page|
          page.visual_effect( :highlight, dom_id(@#{singular}), :duration => 2.0 )
          page.delay( 2 ) do
            page.remove( dom_id(@#{singular}) )
          end
        end
      end
      format.html do
        flash[:notice] = "Registro excluído com sucesso."
        redirect_to #{plural}_path
      end
    end
  end

  protected

  def carrega_#{singular}
    @#{singular} = params[:id].blank? ? #{nome}.new : #{nome}.find(params[:id])
  end

  def cria_ou_atualiza( mensagem, acao )
    if @#{singular}.update_attributes(params[:#{singular}])
      flash[:notice] = "Registro \#{mensagem} com sucesso."
      redirect_to #{plural}_path
    else
      render acao
    end
  end
!

      class_eval metodos

    end

  end

end

