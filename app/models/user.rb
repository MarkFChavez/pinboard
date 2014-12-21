class User < ActiveRecord::Base
  validates :provider, :uid, presence: true

  has_many :pins, dependent: :destroy

  def self.find_or_create_by_omniauth auth_params
    user = self.find_or_create_by(provider: auth_params.provider, uid: auth_params.uid) do |user|
      user.email = auth_params.info.email
      user.first_name = auth_params.info.first_name
      user.last_name = auth_params.info.last_name
      user.image = auth_params.info.image
    end

    user
  end

  def full_name
    [first_name, last_name].join(" ")
  end
end
