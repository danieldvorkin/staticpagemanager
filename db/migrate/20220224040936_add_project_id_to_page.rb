class AddProjectIdToPage < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :project_id, :integer
  end
end
