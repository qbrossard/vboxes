class User < ActiveRecord::Base
  has_many :tweets, :dependent => :destroy
  attr_accessible :handle, :lastname, :name

  def to_s
    return "@#{handle}"
  end
end
