
RSpec.describe F1SalesCustom::Hooks::Lead do
  describe '#before_create' do
    let(:lead_payload){ { product: 'foo', message: 'bar' } }

    it 'has a before create' do
      expect(described_class).to respond_to(:before_create)
    end

    it 'returns the giving argument' do
      expect(described_class.before_create(lead_payload)).to eq(lead_payload)
    end
  end
end
