class HomeController < ApplicationController


	def index
	end
	
	def mission
	end

	def realisation
	end

	def presentation
	end

	def garanties
	end	

	def contact

	end

	def sendemail
		@name = params['name']
		@email = params['email']
		@addresse = params['addresse']
		@message = params['message']
		ContactMailer.sendmail(@email,@name,@addresse,@message).deliver_now
		render  'index'
	end
end	
