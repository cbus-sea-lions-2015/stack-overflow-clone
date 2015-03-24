class CreateSchema < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_hash

      t.timestamps
    end

    create_table :questions do |t|
      t.string :question_title
      t.string :question_text
      t.references :user
    end

    create_table :answers do |t|
      t.string :answer_text
      t.references :user
    end

    create_table :votes do |t|
      t.references :vote, polymorphic: true
      t.references :user

      t.timestamps
    end


  end
end
