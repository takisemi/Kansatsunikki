class CreateArticleRelationships < ActiveRecord::Migration[8.1]
  def change
    create_table :article_relationships do |t|
      t.references :article, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
