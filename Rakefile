require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rbmagento', '0.1.0') do |p|
  p.description              = "Rubygem for connecting to a Magento store via the Magento Core API"
  p.url                      = ""
  p.author                   = ["Julian Fischer, Tim Matheson"]
  p.email                    = ["fischer@avarteq.de, me@timmatheson.com"]
  p.ignore_pattern           = ["tmp/*","script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/lib/tasks/*.rake"].sort.each { |ext| load ext }
