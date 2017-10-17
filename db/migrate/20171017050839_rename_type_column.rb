class RenameTypeColumn < ActiveRecord::Migration[5.1]
    def change
        rename_column :links, :type, :is_single_use
        add_column :links, :is_secure, :integer
    end
end
