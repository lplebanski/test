class ContactsController < ApplicationController
  def index
    @users = User.all
  end
end
