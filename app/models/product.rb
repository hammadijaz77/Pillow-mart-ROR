class Product < ApplicationRecord
    has_one_attached :image
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "price", "product_description", "product_name", "updated_at"]
      end
      def self.ransackable_associations(auth_object = nil)
        ["image_attachment", "image_blob"]
      end  
end
