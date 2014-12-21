class User < ActiveRecord::Base
  validates :provider, :uid, presence: true
end
