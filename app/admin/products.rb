ActiveAdmin.register Product do
  config.filters=false
  permit_params :product_name, :product_description, :price, :image


  controller do
    before_action :authenticate_admin_user! # Devise helper for authenticating
    before_action :authorize_admin, only: [ :show]
    before_action :authorize_edit, only: [:edit, :update]
    before_action :authorize_deletion, only: [:destroy]
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def authorize_admin
      if current_admin_user.nil?
        Rails.logger.debug "No current_admin_user found!55555"
      else
        Rails.logger.debug "current_admin_user555: #{current_admin_user.inspect}"
        authorize current_admin_user, :view_product?, policy_class: AdminUserPolicy
      end
    end

    # Authorization for editing products
    def authorize_edit
      if current_admin_user.nil?
        Rails.logger.debug "No current_admin_user found!6666"
      else
        Rails.logger.debug "current_admin_user666: #{current_admin_user.inspect}"
        authorize current_admin_user, :edit_product?, policy_class: AdminUserPolicy
      end
    end

    # Authorization for deleting products
    def authorize_deletion
      if current_admin_user.nil?
        Rails.logger.debug "No current_admin_user found!777"
      else
        Rails.logger.debug "current_admin_user777: #{current_admin_user.inspect}"
        authorize current_admin_user, :delete_product?, policy_class: AdminUserPolicy
      end
    end
    private

    def current_user
      # Ensure this method returns the current signed-in admin
      current_admin_user
    end

    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || admin_products_path)
    end
  end

  form do |f|
    f.inputs 'Product Details' do
      f.input :product_name
      f.input :product_description
      f.input :price
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :product_name
    column :product_description
    column :price
    column :image do |product|
      if product.image.attached?
        image_tag product.image.variant(resize_to_limit: [100, 100]).processed, alt: product.product_name, class: "thumbnail"
      else
        "No image"
      end
    end
    actions
  end
  
 
end
