require 'rails_admin/pundit/configuration'
require 'rails_admin/pundit/extensions/authorization_adapter'

RailsAdmin.add_extension(:pundit, RailsAdmin::Pundit::Extensions, {
  :authorization => true
})

module RailsAdmin
  module Pundit
    def self.configuration
      @config ||= Configuration.new
    end

    def self.configure
      yield configuration
    end
  end
end
