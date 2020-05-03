class UsersController < ApplicationController
 def index
    render plain:  User.order(:id).map { |user| user.to_pleasant_string}.join("\n")
 end
 def show 
    id=params[:id]
    user=User.find(id)
    render plain: user.to_pleasant_string
 end
 def create
    name=params[:name]
    email=params[:email]
    password=params[:password]
    user=User.create!(
        name: name,
        email: email,
        password: password
    )
    render plain: "new user created "
 end
end