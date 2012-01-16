class Message < ActiveRecord::Base
    belongs_to :sender, :class_name => "User"
    belongs_to :reciever, :class_name => "User"

    validates :text, :presence => true
end