require_relative '../book'

describe Book do
  context 'Should create a new instance of Book class' do
    it 'The initialize method returns a Book object with the attributes provided' do
      title = 'Harry Potter'
      author = 'James Row'
      book = Book.new(title, author)

      expect(book.title).to eq title
      expect(book.author).to eq author
    end
  end
end
