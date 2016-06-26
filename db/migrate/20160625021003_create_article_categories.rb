class CreateArticleCategories < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
    	t.integer :article_id
    	t.integer :category_id
    	#you dont have to add timestamps here but you could do at with no promlem
    end
  end
end
