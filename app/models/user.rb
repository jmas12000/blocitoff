class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  
  before_save { self.email = email.downcase }
  
  has_many :items, dependent: :destroy

  def avatar_url(size)
    gravatar_id = Digest::MD5::hexdigest(self.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
end