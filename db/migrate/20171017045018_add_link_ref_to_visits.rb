class AddLinkRefToVisits < ActiveRecord::Migration[5.1]
  def change
    add_reference :visits, :link, foreign_key: true
  end
end
