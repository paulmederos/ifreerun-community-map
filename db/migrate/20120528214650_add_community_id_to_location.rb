class AddCommunityIdToLocation < ActiveRecord::Migration
  def change
        add_column :locations, :community_id, :integer
  end
end
