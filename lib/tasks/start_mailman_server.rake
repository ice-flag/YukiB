task :start_mailman_server do
  puts 'Starting Mailman Server'

  ruby "script/mailman_server.rb"

end