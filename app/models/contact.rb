class Contact < ApplicationRecord
  belongs_to :user
  def self.ransackable_associations(auth_object = nil)
    ["user_id"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "message", "name", "subject", "updated_at", "user_id"]
  end
end
