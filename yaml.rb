#!/usr/bin/env ruby

require 'yaml'
require 'ap'

log = File.open( "mustache.out" )
yp = YAML::load_documents( log ) { |doc|
  first, *rest = doc[0].split("\t")
  puts "#{first}"
  puts rest
  ap doc[1]
  ap doc[2]
  print "Account/Labels: "
  ap doc[3]
  if("String"==doc[3].class.to_s) then
    puts "String:#{doc[3]}"
  elsif("Hash"==doc[3].class.to_s) then
    doc[3].each do |a|
      if("Array"==a.class.to_s) then
	puts "value:#{a}"
	print "Label: "
	ap a[0]
	print "Value: "
	ap a[1]
      else
	puts "Exception!"
      end
    end
  else
    puts "Exception!"
  end
  print "Notes: "
  ap doc[4]["notes"]
}
