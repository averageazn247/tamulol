class Player < ActiveRecord::Base
  attr_accessible :unranked, :bronze, :gold, :silver, :plat, :diamond
end
