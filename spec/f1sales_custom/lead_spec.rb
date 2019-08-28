require 'ostruct'

RSpec.describe F1SalesCustom::Hooks::Lead do
  describe '#switch_source' do

    let(:source_name){ 'Foobares' }

    let(:lead_object) do
      source = OpenStruct.new
      source.name = source_name
      lead = OpenStruct.new
      lead.source = source

      lead
    end

    it 'has a before create' do
      expect(described_class).to respond_to(:switch_source)
    end

    it 'returns the source name' do
      expect(described_class.switch_source(lead_object)).to eq(source_name)
    end
  end
end
