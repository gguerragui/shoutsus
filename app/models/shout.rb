class Shout < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :message

  default_scope order('id DESC')
end

