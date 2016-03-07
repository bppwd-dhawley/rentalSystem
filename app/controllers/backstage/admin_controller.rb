class Backstage::AdminController < ApplicationController
	before_action :authenticate_user!

  def index
  end
end
