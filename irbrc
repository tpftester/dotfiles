require 'rubygems'
require 'irbtools'
  
current_dir = Dir.pwd.split('/')[-1]
IRB.conf[:PROMPT].each do |prompt|
  prompt_i = IRB.conf[:PROMPT][prompt.first][:PROMPT_I]
  IRB.conf[:PROMPT][prompt.first][:PROMPT_I] = "#{current_dir} #{prompt_i}"
end
 
def ri(*names) 
  system(%{ri #{names.map {|name| name.to_s}.join(" ")}}) 
end 

def benchmark
  cur = Time.now
  result = yield
  print "#{cur = Time.now - cur} seconds"
  puts " (#{(cur / $last_benchmark * 100).to_i - 100}% change)" rescue puts ""
  $last_benchmark = cur
  result
end

script_console_running = ENV.include?('RAILS_ENV') && IRB.conf[:LOAD_MODULES] && IRB.conf[:LOAD_MODULES].include?('console_with_helpers')
rails_running = ENV.include?('RAILS_ENV') && !(IRB.conf[:LOAD_MODULES] && IRB.conf[:LOAD_MODULES].include?('console_with_helpers'))
 
if script_console_running
  require 'logger'
  Object.const_set(:RAILS_DEFAULT_LOGGER, Logger.new(STDOUT))
end
