require 'spec_helper'

describe "raids/edit" do
  before(:each) do
    @raid = assign(:raid, stub_model(Raid,
      :name1 => "MyString",
      :player1 => "MyString",
      :name2 => "MyString",
      :player2 => "MyString",
      :name3 => "MyString",
      :player3 => "MyString",
      :name4 => "MyString",
      :player4 => "MyString",
      :name5 => "MyString",
      :player5 => "MyString",
      :player6 => "MyString",
      :name6 => "MyString",
      :name7 => "MyString",
      :player7 => "MyString",
      :name8 => "MyString",
      :player8 => "MyString",
      :name9 => "MyString",
      :player9 => "MyString",
      :name10 => "MyString",
      :player10 => "MyString"
    ))
  end

  it "renders the edit raid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => raids_path(@raid), :method => "post" do
      assert_select "input#raid_name1", :name => "raid[name1]"
      assert_select "input#raid_player1", :name => "raid[player1]"
      assert_select "input#raid_name2", :name => "raid[name2]"
      assert_select "input#raid_player2", :name => "raid[player2]"
      assert_select "input#raid_name3", :name => "raid[name3]"
      assert_select "input#raid_player3", :name => "raid[player3]"
      assert_select "input#raid_name4", :name => "raid[name4]"
      assert_select "input#raid_player4", :name => "raid[player4]"
      assert_select "input#raid_name5", :name => "raid[name5]"
      assert_select "input#raid_player5", :name => "raid[player5]"
      assert_select "input#raid_player6", :name => "raid[player6]"
      assert_select "input#raid_name6", :name => "raid[name6]"
      assert_select "input#raid_name7", :name => "raid[name7]"
      assert_select "input#raid_player7", :name => "raid[player7]"
      assert_select "input#raid_name8", :name => "raid[name8]"
      assert_select "input#raid_player8", :name => "raid[player8]"
      assert_select "input#raid_name9", :name => "raid[name9]"
      assert_select "input#raid_player9", :name => "raid[player9]"
      assert_select "input#raid_name10", :name => "raid[name10]"
      assert_select "input#raid_player10", :name => "raid[player10]"
    end
  end
end
