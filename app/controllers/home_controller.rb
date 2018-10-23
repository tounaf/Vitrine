class HomeController < ApplicationController


	def index
	end
	
	def mission
	end

	def realisation
	end

	def presentation
	end

	def realisation
	end	

	def contact

	end

	def sendemail
		@name = params['name']
		@email = params['email']
		@message = params['message']
		ContactMailer.sendmail(@email,@name,@message).deliver_now
		render  'index'
	end
end	
