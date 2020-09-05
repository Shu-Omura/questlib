require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe 'validation' do
    shared_examples 'is valid' do
      it { expect(user).to be_valid }
    end

    shared_examples 'is invalid' do
      it { expect(user).not_to be_valid }
    end

    context 'as factory' do
      it_behaves_like 'is valid'
    end

    context 'without teams' do
      let(:user) { build(:user, teams: []) }

      it_behaves_like 'is invalid'
    end

    context 'as name' do
      context 'is blank' do
        before { user.name = '' }

        it_behaves_like 'is invalid'
      end

      context 'is nil' do
        before { user.name = nil }

        it_behaves_like 'is invalid'
      end
    end
  end

  describe 'Associated model' do
    context 'when create user' do
      it 'creates a new belong record' do
        expect { user.save }.to change(Belong, :count).by(1)
      end

      context 'as a new belong record' do
        before { user.save }

        it 'associated with user and teams' do
          expect(Belong.last.user).to eq user
          expect(Belong.last.team).to eq user.teams.take
        end
      end
    end
  end
end
