class Invoice < ActiveRecord::Base
  attr_accessible :title,
  								# for receiving emails
  								:title, :from, :receiver,
  								:body # text variable

  # to read email and create an invoice
	def self.read_invoice(message)
		begin
			if message.multipart?
			  # email_html = message.html_part.body.decoded  #parsing of html content of the email
			  # email_text = message.text_part.body.decoded  # parsing of text content of the email
			  Invoice.create! title: message.subject, body: message.html_part.body.decoded, from: message.from.first, receiver: message.to.first
			else
			  # email_html = message.body.decoded    # in this case its a plain email so html body is same as text body..
			  # email_text = message.body.decoded
			  Invoice.create! title: message.subject, body: message.html_part.body.decoded, from: message.from.first, receiver: message.to.first
			end			
		rescue Exception => e
			Ticket.create! title: e.message, body: e.backtrace.inspect
		end
	end
end
