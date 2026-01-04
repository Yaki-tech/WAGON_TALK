class AddTranslationsToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :content_en, :text
  end
end
