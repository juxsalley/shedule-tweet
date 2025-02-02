class TwitterAccountsController  < ApplicationController
  before_action :require_user_logged_in!
  before_action :set_twitter_account, only: [:destroy]

  def index
    @twitter_accounts = Current.user.twitter_accounts
  end
  def destroy
    @twitter_account = Current.user.twitter_accounts.find(params[:id])
    @twitter_account.destroy
    redirect_to twitter_accounts_path
  end

end