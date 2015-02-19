class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Bienvenido a la Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def new
  	@user = User.new
  end  
    require "prawn"
      #def pdf
        Prawn::Document.generate("Informe.pdf") do
        text "Informe de Revision", :align => :center, :size => 18
        stroke_axis( :width => 200, :height => 200, :step_length => 20, :color => 'FF00')
        stroke { line [0, 200], [100, 150] }
        fill { rectangle [0, 100], 100, 100 }
        image "#{Prawn::DATADIR}/images/prawn.png"
      #end
    end
  private 
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
