class PostTest < ActiveRecord::Base
  validates :user, presence: true, length: {minimum: 3}
end
