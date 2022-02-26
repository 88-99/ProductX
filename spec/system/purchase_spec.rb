require 'rails_helper'
RSpec.describe '仕入登録機能', type: :system do
  describe '新規作成機能' do
    before do
      user = FactoryBot.create(:user, :a)
      @team = FactoryBot.create(:team, user: user)
      @grouping = Grouping.create(user_id: user.id, team_id: @team.id)
      @supplier = Supplier.create(name: "サプライヤー")
      @product = FactoryBot.create(:product, user: user, team: @team)        
      @second_product = FactoryBot.create(:second_product, user: user, team: @team)
      visit new_user_session_path
      fill_in :user_email, with: user.email
      fill_in :user_password, with: user.password
      click_button 'ログイン'
    end
    context '仕入を新規登録した場合' do
      it '登録後の画面で選んだ商品が表示される' do
        visit new_team_purchase_path(@team)
        fill_in :purchase_date_at, with: '002022-02-02'
        select 'サプライヤー', from: 'purchase[supplier_id]' 
                
        
        click_button '登録する'
        expect(page).to have_content '登録しました'
      end
    end
  end
# #   describe '一覧表示機能' do
# #     context '一覧画面に遷移した場合' do
# #       it '作成済みの商品一覧が表示される' do
# #         visit team_products_path
# #         expect(page).to have_content 'Factoryで作った名前１'
# #         expect(page).to have_content 'Factoryで作った名前２'
# #       end
# #     end
# #   end
# #   describe '編集機能' do
# #     context '商品を編集した場合' do
# #       it '編集した商品が表示される' do
# #         visit edit_team_product_path(@product.id)
# #         fill_in :product_code, with: 'abc1234'
# #         fill_in :product_name, with: '商品名を変更'
# #         fill_in :product_regular_price, with: '800'
# #         fill_in :product_selling_price, with: '700'
# #         fill_in :product_cost_price, with: '600'
# #         click_on '登録する'
# #         visit edit_team_product_path(@product.id)
# #         expect(page).to have_content '商品名を変更'
# #       end
# #     end
# #   end
end