require "rails_helper"

module Commands
  describe CreatePizza do
    subject { described_class.new }

    subject! do
      CreatePizza.new.run(pizza: {name: "longname"*20})
    end

    describe '#run' do
      it 'should truncate the name' do
        expect(subject.name.length).to eq(50)
      end
    end
  end
end
