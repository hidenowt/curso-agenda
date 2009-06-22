# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def will_paginate(collection = nil, options = {})
    options[:previous_label] = 'Anterior'
    options[:next_label] = 'Próximo'
    super(collection, options)
  end

end

