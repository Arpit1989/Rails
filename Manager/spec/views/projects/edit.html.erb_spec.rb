require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :project_url => "",
      :Github => nil
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_project_url", :name => "project[project_url]"
      assert_select "input#project_Github", :name => "project[Github]"
    end
  end
end
