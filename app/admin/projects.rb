ActiveAdmin.register Project do
  # Permit our parameters for the form
  permit_params :title, :body, :image
  menu priority: 2
  # Determine which parameters will show on the User Interface
  index do
    column :id
    column :title, :sortable => :title
    column :image_file_name
    column :image_file_size
    column :created_at, :sortable => :created_at
    actions
  end
  show do |s|
    attributes_table do
      row :title
      row :body
      row :image do
        project.image? ? image_tag(project.image.url(:thumb)) :content_tag(:span, "No Photo Yet")
      end
    end
  end
  # Form validation Goes before the form here
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Project Details" do
      f.input :title, :label => "Project Title"
      f.input :body, as: :html_editor, :label => "Project Description"
      f.input :image, :label => "Project Header Image", hint: f.project.image? ? image_tag(project.image.url(:thumb)) : content_tag(:span, "Upload JPG/PNG/GIF Image")
    end
    f.actions
  end
end