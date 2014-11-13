#!/usr/bin/env ruby
require "rubygems"
require "bundler/setup"
require "mailman"

Mailman.config.pop3 = {
  server: 'pop.gmail.com', port: 995, ssl: true,
  username: "invoices@ap-onderdelen.nl",
  password: "BlueRobin09"
}

Mailman.config.poll_interval = 15

Mailman.config.graceful_death

Mailman::Application.run do
  default do
    begin
      Invoice.read_invoice(message)
    rescue Exception => e
      Invoice.create!(title: "OMG! OMG! OMFG! Crashed.. dafuq isk gebeurt!! WTF!")
    end
  end
end