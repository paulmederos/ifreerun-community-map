class ChangeSummaryToText < ActiveRecord::Migration
  def change
    change_column :communities, :summary, :string
  end
end