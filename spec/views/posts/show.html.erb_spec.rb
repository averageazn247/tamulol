require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :topic => "Topic",
      :body => "MyText",
      :creator_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Topic/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
