class Me < ActiveRecord::Base
  include ActiveRecord::Singleton
  include Markdownable

  # Save password as a digest in the database, with authentication
  # handled in the model.
  has_secure_password :validations => true

  # Create an :auth_token for me to use to store the session.
  before_create { self.auth_token = SecureRandom.urlsafe_base64 }

  # I have posts, like a blog or something.
  has_many :posts

  def name
    "Nathan Lilienthal"
  end

  def birthday
    Date.new(1993, 3, 12)
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - (
      (now.month > birthday.month ||
                   (now.month == birthday.month && now.day >= birthday.day)
      ) ? 0 : 1)
  end

end
