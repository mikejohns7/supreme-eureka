class SwapColumnsInVisits < ActiveRecord::Migration[5.1]
  def change
      remove_column :visits, :date
      add_column :visits, :original_url, :string
  end
end
