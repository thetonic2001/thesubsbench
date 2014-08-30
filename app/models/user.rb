class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :profile_name, presence: true,
						 uniqueness: { case_sensitive: false },
						 length: { maximum: 50 },
						 format: {
						 	with: /\A[a-zA-Z0-9_-]+\Z/,
						 	message: 'must be formatted correctly.'
						 }

                           
  def full_name
		first_name + " " + last_name
	end
end
