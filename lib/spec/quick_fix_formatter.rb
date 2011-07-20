require 'spec/runner/formatter/base_formatter'
require 'rspec-quickfix-formatter/base'

module Spec::Runner::Formatter
  class QuickFixFormatter < BaseFormatter
    include QuickFixFormatterBase
  end
end
  
