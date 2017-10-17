class ChangeName < ActiveRecord::Migration[5.1]
    def change
        remove_column :links, :visits
    end
end
