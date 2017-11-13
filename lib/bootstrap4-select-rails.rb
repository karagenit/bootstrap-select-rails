require "rails"
require "bootstrap4-select-rails/version"

module Bootstrap4
  module Select
    module Rails
      if ::Rails.version < "3.1"
        require "bootstrap4-select-rails/railtie"
      else
        require "bootstrap4-select-rails/engine"
      end
    end
  end
end
