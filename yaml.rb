#!/usr/bin/env ruby

require 'yaml'
require 'ap'

log = File.open( "mustache.out" )
yp = YAML::load_documents( log ) { |doc|
  ap doc
}
