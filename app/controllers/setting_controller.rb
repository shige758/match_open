class SettingController < ApplicationController
  def index
    @number_of_courts = params[:coat]
    @number_of_rounds = params[:number_of_rounds]
    @member_count = params[:member_count]
  end
end