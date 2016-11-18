class Contact < ApplicationRecord
	def pretty_time
		created_at.strftime("%A, %b %d")
	end

	def full_name
		first_name + " " + last_name
	end

	def phone_with_japanese_prefix
		"+81 #{phone_number}"
	end

	# Super Bonus! Create a class method that returns all the contacts with the first name “John”. Create a special (non RESTful) route called all_johns to show them all.

	def self.all_johns	
		# @contacts = Contact.all
		# @all_johns = []
		# @contacts.each do |contact|
		#   if contact.first_name == "John"
		# 	 @all_johns << contact
		# 	end
		# end
		# @all_johns
		# But using the where method is much simpler:
		Contact.where(first_name: "John")
	end
end
