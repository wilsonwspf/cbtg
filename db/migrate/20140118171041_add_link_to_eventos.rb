class AddLinkToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :link, :string
  end
end
