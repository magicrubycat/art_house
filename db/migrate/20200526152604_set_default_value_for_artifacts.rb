class SetDefaultValueForArtifacts < ActiveRecord::Migration[6.0]
  def change
    change_column :artifacts, :sold, :boolean, default: false
  end
end
