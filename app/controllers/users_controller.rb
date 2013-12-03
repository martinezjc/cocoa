class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)

    if @user.save
      flash[:notice] = "Te has registrado correctamente"
      flash[:color] = "valid"
    else
      flash[:notice] = "Los datos del formulario no son validos"
      flash[:color] = "invalid"
    end
    render "new"
  end

  private
      def post_params
        params.require(:user).permit(:id_user_type, :identification, :username, :password, :name, :address, :mobile, :status, :email)
      end
end
