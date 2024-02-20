ActiveAdmin.register Task do
  #belongs_to :admin_user
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #permit_params :name, :title, :content, :admin_users_id
  #
  # or
  #
  scope_to :current_admin_user
  permit_params do
    
    permitted = [:name, :title, :content, :admin_user_id]
    #permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  menu label: proc{ I18n.t "mytask" }
  
  index do
    selectable_column
    id_column
    column :name
    column :title
    column :content
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :title
      f.input :content
      f.input :admin_user_id, input_html: { value: current_admin_user.id}, as: :hidden
      #f.input :admin_users_id, input_html: { value: current_admin_user.id,readonly: true, disabled: true }
    end
    f.actions
  end

end
