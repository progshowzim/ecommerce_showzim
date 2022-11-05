require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Espero validar os campos obrigatório' do
    it 'Valida o campos estivem presentes' do
      category = build(:category)

      expect(category.valid?).to eq(true)
    end

    it 'valida o campo nome não está presente' do
      category = build(:category, name: nil)

      expect(category.valid?).to eq(false)
    end

    it 'valida o campo posição não está presente' do
      category = build(:category, position: nil)

      expect(category.valid?).to eq(false)
    end
  end
end
