class CreateRushings < ActiveRecord::Migration[5.2]
  def change
    create_table :rushings do |t|
      t.string :player
      t.string :team
      t.string :pos
      t.string :attg
      t.string :att
      t.string :yrds
      t.string :avg
      t.string :ydsg
      t.string :td
      t.string :lng
      t.string :first
      t.string :firstpercent
      t.string :twentyplus
      t.string :fortyplus
      t.string :fum

      t.timestamps
    end
  end
end
