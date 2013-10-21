require 'spec_helper'

describe "raids/index" do
  before(:each) do
    assign(:raids, [
      stub_model(Raid,
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
      ),
      stub_model(Raid,
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
      )
    ])
  end

  it "renders a list of raids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name1".to_s, :count => 2
    assert_select "tr>td", :text => "Player1".to_s, :count => 2
    assert_select "tr>td", :text => "Name2".to_s, :count => 2
    assert_select "tr>td", :text => "Player2".to_s, :count => 2
    assert_select "tr>td", :text => "Name3".to_s, :count => 2
    assert_select "tr>td", :text => "Player3".to_s, :count => 2
    assert_select "tr>td", :text => "Name4".to_s, :count => 2
    assert_select "tr>td", :text => "Player4".to_s, :count => 2
    assert_select "tr>td", :text => "Name5".to_s, :count => 2
    assert_select "tr>td", :text => "Player5".to_s, :count => 2
    assert_select "tr>td", :text => "Player6".to_s, :count => 2
    assert_select "tr>td", :text => "Name6".to_s, :count => 2
    assert_select "tr>td", :text => "Name7".to_s, :count => 2
    assert_select "tr>td", :text => "Player7".to_s, :count => 2
    assert_select "tr>td", :text => "Name8".to_s, :count => 2
    assert_select "tr>td", :text => "Player8".to_s, :count => 2
    assert_select "tr>td", :text => "Name9".to_s, :count => 2
    assert_select "tr>td", :text => "Player9".to_s, :count => 2
    assert_select "tr>td", :text => "Name10".to_s, :count => 2
    assert_select "tr>td", :text => "Player10".to_s, :count => 2
  end
end
