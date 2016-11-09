class ContactsController < ApplicationController
  def first_contact
 		@first_contact = Contact.find_by(id: 1)
 		render 'firstcontact.html.erb'
	end

	def all_contacts
		@all_contacts = Contact.all
		render 'allcontacts.html.erb'
	end
end
