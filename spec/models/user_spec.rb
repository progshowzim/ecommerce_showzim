require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Espero validar os campos obrigatório' do
    it 'Valida o campo nome está presente' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'valida o campo nome não está presente' do
      user = build(:user, name: nil)

      expect(user.valid?).to eq(false)
    end

    it 'Valida o campo telefone está presente' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'valida o campo telefone não está presente' do
      user = build(:user, phone: nil)

      expect(user.valid?).to eq(false)
    end

    it 'Valida o campo email está presente' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'valida o campo email não está presente' do
      user = build(:user, email: nil)

      expect(user.valid?).to eq(false)
    end

    it 'Valida o campo senha está presente' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'valida o campo senha não está presente' do
      user = build(:user, password: nil)

      expect(user.valid?).to eq(false)
    end

    context 'Valida email' do
      it 'Validar email unicos' do
        user1 = create(:user) # user email: user1@gmail.com
        user2 = build(:user, email: user1.email) # user1@gmail.com

        expect(user2.valid?).to eq(false)
      end

      it 'Validar mensagem de erro para emails unicos' do
        user1 = create(:user) # user email: user1@gmail.com
        user2 = build(:user, email: user1.email) # user1@gmail.com

        user2.save

        expect(user2.valid?).to eq(false)
        expect(user2.errors.size).to be_positive
      end
    end
  end
end
