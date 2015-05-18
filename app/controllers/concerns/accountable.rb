module Accountable
  extend ActiveSupport::Concern
  included do

    attr_reader :logedin_account_id
    attr_reader :logedin_account_token
    attr_reader :logedin_user

    private


    def logedin?
      nil != @logedin_account_id
    end

    def current_user?(user=nil)
      unless logedin?
        return false
      end

      user_id = nil != user ? user.id : params[:id]
      user_id == @logedin_user.id
    end

    def contains_current_user?(container)
      container.users.each do |user|
        if current_user?(user)
          return true
        end
      end
      return false
    end

    def set_logedin_infos
      if session[:logedin_account_id].blank?
        return
      end

      find_params = {}
      find_params[:id]    = session[:logedin_account_id]
      find_params[:token] = session[:logedin_account_token]

      account = Account.common_find_by(find_params)

      if account.blank?
        session[:logedin_account_id]    = nil
        session[:logedin_account_token] = nil
        @logedin_account_id     = nil
        @logedin_account_token  = nil
        @logedin_user           = nil

      else
        @logedin_account_id     = account.id
        @logedin_account_token  = account.token
        @logedin_user           = account.user

      end
    end

    def login_account(provider, uid)
      account = Account.authenticate(provider, uid)
      if account.blank?
        return false

      else
        token = SecureRandom.uuid
        account.token = token
        account.save!
        session[:logedin_account_id] = account.id
        session[:logedin_account_token] = account.token

        set_logedin_infos
        return true
      end

    end

    def logout_account
      session[:logedin_account_id]    = nil
      session[:logedin_account_token] = nil
      set_logedin_infos

    end

  end
end

