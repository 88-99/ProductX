require 'rails_helper'
describe '仕入モデル機能', type: :model do
  describe 'バリデーションのテスト' do
    before do
      @user = FactoryBot.create(:user, :a)
      @team = FactoryBot.create(:team, user: @user)
      @supplier = FactoryBot.create(:supplier)
    end
    context '仕入の日付が空の場合' do
      it 'バリデーションにひっかかる' do
        purchase = Purchase.new(
          date_at: nil,
          inputter: @user.id,
          user_id: @user.id
          )
        expect(purchase).not_to be_valid
      end
    end
    context '仕入登録に必要な項目が記載されている場合' do
      it 'バリデーションが通る' do
        purchase = Purchase.new(
          date_at: '002022-02-01',
          inputter: @user.id,
          user_id: @user.id,
          team_id: @team.id,
          supplier_id: @supplier.id
          )
        expect(purchase).to be_valid
      end
    end
  end
end