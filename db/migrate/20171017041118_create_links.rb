class CreateLinks < ActiveRecord::Migration[5.1]
    def change
        create_table :links do |t|
            t.string        :code
            t.integer       :is_active
            t.integer       :type
            t.integer       :visits
            t.string        :destination
            t.timestamps
        end
    end
end
