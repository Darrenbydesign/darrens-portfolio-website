ActiveAdmin.register Page do

permit_params :title,:section_id,:body,:order,:is_published

index do
  column :id
  column :title, :sortable => :title
  column :section, :sortable => :section
  column :created_at, :sortable => :created_at
  column :order
  actions
end

form do |f|
  f.inputs "Details" do
    f.input :title , :label => "Title"
    f.input :section , :label => "Section"
    f.input :body, as: :html_editor, :label => "Body" 
    f.input :order, :label => "Order"
    f.input :is_published, :label => "Published" 
    f.actions
  end
end
end
