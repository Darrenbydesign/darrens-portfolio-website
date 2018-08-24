ActiveAdmin.register_page "Dashboard" do

  menu priority: 2, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      # column do
      #   panel "Recent Posts" do
      #     ul do
      #       Project.recent(5).map do |project|
      #         li link_to(project.title, admin_project_path(project))
      #       end
      #     end
      #   end
      # end

      column do
        panel "Info" do
          h1 "Welcome to DarrenSorrelsDesign Admin Site."
        end
      end
    end
  end # content
end
