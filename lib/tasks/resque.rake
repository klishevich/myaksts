require 'resque/tasks'
require Rails.root.join('app/workers/deliver_messages.rb').to_s

task "resque:setup" => :environment

