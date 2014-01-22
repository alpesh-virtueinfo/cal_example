class CalendarController < ApplicationController

  def index
    users = User.all
    
    @users = []
     users.each_with_index do |s, i|
       name = s.name
       id = s.id

       @users << { "id" => s.id, "name" => s.name }
    end

    @users.to_json
    #render :json => @users
  end

  def resorces
    users = User.all
    @users = []
     users.each_with_index do |s, i|
       name = s.name
       id = s.id

       @users << { id: s.id, name: s.name }
    end

    respond_to do |format|
      format.json { render json: @users}
    end
  end
end
