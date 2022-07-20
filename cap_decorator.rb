require_relative 'decorator_base'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    super.capitalize
  end
end
