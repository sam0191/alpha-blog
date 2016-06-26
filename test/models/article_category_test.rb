require 'test_helper'

class ArticleCategoryTest < ActiveSupport::TestCase
	def setup
		@articlecategory = ArticleCategory.new(article_id: "13", category_id: "1")
		@category = Category.new(name: "sdad")
		@article = Article.new(title: "sdsadsadsad", description: "asfsafsd gasdsdg", user: User.last)
	end
	test "Category articles should be valid" do 
		assert @articlecategory.valid
?	end

	test "ArticleCategory belongs to article" do
		@articlecategory.article
	end

	test "Article have many categories" do
		assert @article.categories

	end


	test "category have many articles" do
		assert @category.articles

	end

end