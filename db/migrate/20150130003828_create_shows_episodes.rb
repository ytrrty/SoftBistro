class CreateShowsEpisodes < ActiveRecord::Migration
  def change
    create_table :shows_episodes do |t|
      t.references :show, show: true
      t.references :episode, show: true
      t.references :user, show: true
      t.string :show_status
      t.boolean :favorite,  default: false
    end
  end
end
