class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.text :name
      t.text :gender
    end
  end
end
