class CreateAnswerCards < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_cards do |t|
      t.text :phrase

      t.timestamps
    end
  end
end
