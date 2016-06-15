class User < ActiveRecord::Base
	has_many :articles
	#before the user hit the database it will take the email value and  will turn it to lower case by using downcase method and then saving to the database
	before_save { self.email = email.downcase }
	validates :username, presence: true, 
			  uniqueness: { case_sensitive: false },
			  length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105},
		  	uniqueness: { case_sensitive: false },
		  	format: { with: VALID_EMAIL_REGEX }

	
end