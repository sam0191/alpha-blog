require 'test_helper'

class ArticleCategoryTest < ActiveSupport::TestCase
	def setup
		@articlecategory = ArticleCategory.new(article_id: "13", category_id: "1")
		@category = Category.new(name: "sdad")
		@article = Article.new(title: "sdsadsadsad", description: "asfsafsd gasdsdg", user: User.last)
	end
	test "Category articles should be valid" do 
		assert @articlecategory.valid?
	end

	test "ArticleCategory belongs to article" do
		assert @articlecategory.article.nil?
	end

	test "ArticleCategory belongs to Category" do
		assert @articlecategory.category.nil?
	end

end