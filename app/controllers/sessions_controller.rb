class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			#ingresa al usuario y lo redirecciona a la pagina del mismo

		else
			flash[:error] = 'Combination email/password ivalida'
			render 'new'
		end
	end
	
	def destroy
	end
end
