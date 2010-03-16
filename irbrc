# sudo gem install utility_belt
# sudo gem install cldwalker-hirb --source http://gems.github.com

require 'rubygems'
require 'hirb'
require 'wirble'


require 'irb/completion'
require 'irb/ext/save-history'

Hirb.enable
Wirble.init(:skip_prompt => true, :skip_history => true)
Wirble.colorize

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history" 
IRB.conf[:PROMPT_MODE]  = :SIMPLE

Kernel::at_exit do
  IRB::HistorySavingAbility.create_finalizer.call
end

if defined?(DataObjects::Mysql)  
  IRB.conf[:IRB_RC] = Proc.new do
    DataObjects::Mysql.logger = Logger.new(STDOUT, :debug)
  end
end
