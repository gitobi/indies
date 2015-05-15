class V1::AccountsController < V1::BaseController

  def login
    new
  end

  # login
  def logedin
    if login_account(params[:account][:provider], params[:account][:uid])
      redirect_to controller: 'users', action: 'show', id: @logedin_user.id

    else
      flash[:error] = "failed login"
      redirect_to accounts_login_path

    end
  end

  # logout
  def logout
    p 'logout!!!'
    logout_account
    redirect_to root_path
  end

end
