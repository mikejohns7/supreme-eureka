class CreateVisits < ActiveRecord::Migration[5.1]
    def change
        create_table :visits do |t|
            t.string    :host
            t.string    :date
            t.string    :referer
            t.string    :agent
            t.integer   :dnt
            t.timestamps
        end
        add_index :links, :code
    end
end
