require 'rails_helper'
describe '仕入明細モデル機能', type: :model do
  describe 'バリデーションのテスト' do
    before do
      @user = FactoryBot.create(:user, :a)
      @team = FactoryBot.create(:team, user: @user)
      @product = FactoryBot.create(:product, user: @user, team: @team)
      @purchase = FactoryBot.create(:purchase, user_id: @user.id, team_id: @team.id)
    end
    context '仕入明細の数量が空の場合' do
      it 'バリデーションにひっかかる' do
        purchase_detail = PurchaseDetail.new(
                          quantity: nil,
                          )
        expect(purchase_detail).not_to be_valid
      end
    end
    context '仕入明細に必要な項目が記載されている場合' do
      it 'バリデーションが通る' do
        purchase_detail = PurchaseDetail.new(
                          quantity: '100',
                          product_id: @product.id,
                          purchase_id: @purchase.id
                          )
        expect(purchase_detail).to be_valid
      end
    end
  end
end