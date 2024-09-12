ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://activeadmin.info/11-strong-parameters.html

  # Permit parameters for the User model
  permit_params :email, :created_at, :last_sign_in_at, :sign_in_count
  actions :index, :show, :edit, :update, :destroy

  # Define the columns to be displayed on the index page
  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  # Optional: Customize the form for creating/editing users
  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :created_at, as: :datetime_picker
    end
    f.actions
  end
end
