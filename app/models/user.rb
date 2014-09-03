class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_validation { avatar.clear if @delete_image }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :profile_name, presence: true,
						 uniqueness: { case_sensitive: false },
						 length: { maximum: 50 },
						 format: {
						 	with: /\A[a-zA-Z0-9_-]+\Z/,
						 	message: 'must be formatted correctly.'
						 }

has_attached_file :avatar, :styles => {
	large: "800x800", medium: "300x200", spotlight_pic: "320x240!", small: "260x180>", thumb: "80x80>", tiny: "10x10>", :default_url => ('missing.png')
}

def delete_image
  !!@delete_photo
end

def delete_image=(value)
  @delete_image  = !value.to_i.zero?
end

        
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
