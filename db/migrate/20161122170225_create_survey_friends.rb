class CreateSurveyFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_friends do |t|
      t.references :user, foreign_key: true
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
