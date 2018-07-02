class UsersController < ApplicationController
  def index
  @user=User.all
if session[:user_id]
	@signed_in=User.find(session[:user_id])

end

  end
def new
@user=User.new
end
def create
User.create(name:params[:user][:name],age:params[:user][:age],email:params[:user][:email],password:params[:user][:password])

redirect_to action:'index'
end
def edit
@user=User.find(params[:id])

	end
	def update
	@user=User.find(params[:id])
@user.update(name:params[:user][:name],age:params[:user][:age],email:params[:user][:email],password:params[:user][:password])
redirect_to action:'index'
	end
def destroy
	@user=User.find(params[:id])
	@user.destroy
	redirect_to action:'index', notice: "your post is deleted"
end
def sign_out
	if !session[:user_id].blank?
		session.delete(:user_id)
	end
	redirect_to action: 'index'
def sign_in

end
def create_session
u=User.find_by(email: params[:email])
if(u.blank?)
	return redirect_to action: 'sign_in'
end
session
[:user_id]=u.id
redirect_to action: 'index'

	end


end
