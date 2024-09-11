require 'rails_helper'

RSpec.describe "books/show", type: :view do
  let(:librarian) { create(:user, role: "librarian") }
  before(:each) do
    sign_in librarian
    assign(:book, create(:book))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/ISBN/)
    expect(rendered).to match(/Year/)
  end
end
