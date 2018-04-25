ActiveAdmin.register Block do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :body, :display, :show_title, :class_sufix, :is_published

index do
  column :id
  column :title, :sortable => :title
  column :position, :sortable => :position
  column :display, :sortable => :display
  column :created_at, :sortable => :created_at
  column :order
  actions
end

form do |f|
  f.inputs "Details" do
    f.input :title , :label => "Title"
    f.input :show_title , :label => "Show Title"
    f.input :body,as: :html_editor, :label => "Body" 
    f.input :display, :label => "Display", :as => :select, :collection => [["All pages", "all"],["Homepage only","home"],["All expect homepage", "nohome"]]
    f.input :order, :label => "Order"
    f.input :is_published, :label => "Published"
    f.input :class_sufix, :label => "Class Suffix"
    f.actions
  end
end

end
