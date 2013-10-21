require 'spec_helper'

describe "raids/show" do
  before(:each) do
    @raid = assign(:raid, stub_model(Raid,
      :name1 => "Name1",
      :player1 => "Player1",
      :name2 => "Name2",
      :player2 => "Player2",
      :name3 => "Name3",
      :player3 => "Player3",
      :name4 => "Name4",
      :player4 => "Player4",
      :name5 => "Name5",
      :player5 => "Player5",
      :player6 => "Player6",
      :name6 => "Name6",
      :name7 => "Name7",
      :player7 => "Player7",
      :name8 => "Name8",
      :player8 => "Player8",
      :name9 => "Name9",
      :player9 => "Player9",
      :name10 => "Name10",
      :player10 => "Player10"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name1/)
    rendered.should match(/Player1/)
    rendered.should match(/Name2/)
    rendered.should match(/Player2/)
    rendered.should match(/Name3/)
    rendered.should match(/Player3/)
    rendered.should match(/Name4/)
    rendered.should match(/Player4/)
    rendered.should match(/Name5/)
    rendered.should match(/Player5/)
    rendered.should match(/Player6/)
    rendered.should match(/Name6/)
    rendered.should match(/Name7/)
    rendered.should match(/Player7/)
    rendered.should match(/Name8/)
    rendered.should match(/Player8/)
    rendered.should match(/Name9/)
    rendered.should match(/Player9/)
    rendered.should match(/Name10/)
    rendered.should match(/Player10/)
  end
end
