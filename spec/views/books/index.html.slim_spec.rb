require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, Kaminari.paginate_array([ create(:book), create(:book) ]).page(nil))
  end

  it "renders a list of books" do
    render
    assert_select 'div>h4>a', count: 2
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Author".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publisher".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Genre".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("ISBN".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Year".to_s), count: 2
  end
end
