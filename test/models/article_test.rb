require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

	def setup
		@article = Article.new(title: "for test now", description: "this is the description for this title", user: User.first)
	end

	test "article has many categories" do
		assert @article.categories
	end
end