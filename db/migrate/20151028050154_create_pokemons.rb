class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.text :name
      t.text :kind
    end
  end
end
