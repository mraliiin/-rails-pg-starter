class WelcomeController < ApplicationController

  # GET /welcome
  def index
    @users = []
  end

  def expensive_query
    @users = User.all
    render "index"
  end

  def make_objects
      @users = []
    (1..10).each do |i|
        @users <<
            User.create(
                age: rand(21..121),
                name: "name_#{i}",
                email: "user_#{i}@gmail.com",
                address: "address_#{i}"
        )
    end

    render "index"
  end

end
