class CreatePokeballs < ActiveRecord::Migration
  def change
    create_table :pokeballs do |t|
      t.references :trainer, index: true, foreign_key: true
      t.references :pokemon, index: true, foreign_key: true
    end
  end
end
