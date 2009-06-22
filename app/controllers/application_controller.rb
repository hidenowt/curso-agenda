# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  protected

  def carrega_pagina
    @pagina = params[:pagina] || '1'
    @por_pagina = (params[:por_pagina] || '30').to_i
    @por_pagina = 30 if @por_pagina > 30
    true
  end

end

