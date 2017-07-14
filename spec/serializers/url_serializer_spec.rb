describe UrlSerializer do
  let(:url) { UrlSerializer.new(FactoryGirl.create(:url, original_name: 'http://123.com')) }

  context 'to_json' do
    it 'includes short_url' do
      expect(url.to_json).to have_json_path('short_url')
    end

    it 'includes original_name' do
      expect(url.to_json).to have_json_path('original_name')
    end

    it 'includes short_url' do
      expect(url.to_json).to have_json_path('original_name')
    end
  end
end

