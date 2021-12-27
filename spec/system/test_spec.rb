require 'rails_helper'

describe '投稿のテスト' do
  let!(:skip) { create(:skip, name:'hoge',number:2) }
  describe 'トップ画面(top_path)のテスト' do
    before do
      visit root_path
    end
    context '表示の確認' do
      it 'トップ画面(top_path)に「ここはTopページです」が表示されているか' do
        root_path
        p page.body
        expect(page).to have_content 'ここはTopページです'
      end
      it 'top_pathが"/top"であるか' do
        expect(current_path).to eq('/')
      end
    end
  end
end

  describe "投稿一覧のテスト" do
    before do
      visit skips_path
    end
    context '表示の確認' do
      it '投稿されたものが表示されているか' do
        expect(page).to have_content skip.name
        expect(page).to have_link skip.name
      end
    end
  end