class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

   def home
    tech = Chatroom.find_by(name: "tech")
    redirect_to chatroom_path(tech) if tech
  end
end
