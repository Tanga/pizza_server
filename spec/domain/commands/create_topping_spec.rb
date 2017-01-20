require "rails_helper"

module Commands
  describe CreateTopping do
    subject { described_class.new }

    subject! do
      CreateTopping.new.run(topping: {name: "longname"*20})
    end

    describe '#run' do
      it 'should truncate the name' do
        expect(subject.name.length).to eq(25)
      end
    end
  end
end
