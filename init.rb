Redmine::Plugin.register :view_subprojects_tree do
  name 'Redmine Stats plugin'
  author 'Sawan Shah'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  project_module :view_subprojects_tree do
    permission :view_subprojects_tree, :areas => :index
  end
  permission :view_subprojects_tree, :areas => :index
  menu :project_menu, :Areas, { :controller => 'areas', :action => 'index' }, :caption => 'SubProject Tree',  :before => :settings, :param => :project_id, :if =>Proc.new {|p|  p.children.any?}
end
