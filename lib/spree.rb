#######################################################################################################
# Substantial portions of this code were adapted from the Radiant CMS project (http://radiantcms.org) #
#######################################################################################################

SPREE_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "..")) unless defined? SPREE_ROOT

unless defined? Spree::Version
  module Spree
    module Version
      Major = '0'
      Minor = '5'
      Tiny  = '99'

      class << self
        def to_s
          [Major, Minor, Tiny].join('.')
        end
        alias :to_str :to_s
      end
    end
  end
end