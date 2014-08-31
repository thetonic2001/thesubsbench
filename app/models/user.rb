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

        
  def to_param
		profile_name
	end

  def full_name
		first_name + " " + last_name
	end

	def age
	  now = Time.now.utc.to_date
	  now.year - date_of_birth.year - ((now.month > date_of_birth.month || (now.month == date_of_birth.month && now.day >= date_of_birth.day)) ? 0 : 1)
	end

end
