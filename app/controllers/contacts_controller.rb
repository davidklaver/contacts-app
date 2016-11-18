class ContactsController < ApplicationController
  def show
 		@contact = Contact.find_by(id: params["id"])
 		render 'show.html.erb'
	end

	def index
		@all_contacts = Contact.all
		render 'index.html.erb'
	end

	def new
		render 'new.html.erb'
	end

	def create
		coordinates = Geocoder.coordinates(params["address"])
		@new_contact = Contact.create(
			first_name: params["first_name"],
			middle_name: params["middle_name"],
			last_name: params["last_name"],
			email: params["email"],
			phone_number: params["phone_number"],
			bio: params["bio"],
			latitude: coordinates[0],
			longitude: coordinates[1]
		)
		render 'create.html.erb'
	end

	def all_johns
		render 'all_johns.html.erb'
	end
end
