ActiveAdmin.register Contact do
    menu label: "Queries"
  
    actions :index, :show, :destroy # Remove the create/edit actions
  
    index do
      selectable_column
      id_column
      column :name
      column :email
      column :subject
      column :message
      column :created_at
      actions
    end
  
    show do
      attributes_table do
        row :name
        row :email
        row :subject
        row :message
        row :created_at
      end
      active_admin_comments
    end
  end
  