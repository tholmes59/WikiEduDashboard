class BiggerTrainingTranslationsColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :training_slides, :translations, :text, :limit => 8_000_000
    execute "ALTER TABLE training_slides MODIFY translations TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
  end
end
