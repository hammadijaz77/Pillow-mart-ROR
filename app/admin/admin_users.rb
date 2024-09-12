ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, permissions: []


  controller do
    before_action :authenticate_admin_user!
    include Pundit::Authorization
    alias_method :current_user, :current_admin_user
    
  end

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    # Add checkboxes for specific permissions
    f.input :permissions, as: :check_boxes, collection: [
      ['Can view product', 'view_product'],
      ['Can edit product', 'edit_product'],
      ['Can delete product', 'delete_product']
    ]
  end
  f.actions
end

end
