class CreateProjects < ActiveRecord::Migration
  def change
    create_table(:projects) do |t|
      t.references :admin
      t.string :title
      t.string :category
      t.string :slug
      t.string :image
      t.text :description
      t.text :content
      t.string :start_date
      t.string :end_date
      t.integer :hours
      t.string :project_url
      t.string :facebook_url
      t.string :twitter_url
      t.string :tumblr_url
      t.string :googleplay_url
      t.string :instagram_url
      t.string :pinterest_url
      t.string :github_url
      t.string :youtube_url

      t.timestamps
    end

    add_index :projects, :admin_id
    add_index :projects, :slug
  end
end
