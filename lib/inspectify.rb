require 'inspectify/inspections/base'
require 'inspectify/inspections/create'
require 'inspectify/inspections/detail'
require 'inspectify/inspections/open'
require 'inspectify/inspections/options'

module Inspectify
  class << self
    attr_accessor :inspectify_environment, :inspectify_auth_token
  end
end
