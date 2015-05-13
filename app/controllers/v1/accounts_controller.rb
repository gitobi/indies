class V1::AccountsController < V1::BaseController

  # login
  def create

    account = Account.authenticate(params[:account][:email], params[:account][:token])

    if account.blank?
      record_not_found

    else
      # ユーザーIDをセッションに保存する
      session[:user_id] = account.user.id
      redirect_to controller: 'users', action: 'show', id: account.user.id
    end
  end

end
