require 'rails_helper'

RSpec.describe ArtigosController, type: :controller do
  describe "GET 'show'" do
    let!(:artigo) do
      create(:artigo)
    end
    before do
      get :show, params: { id: artigo }
    end
    it 'assigns a artigo' do
      expect(assigns(:artigo)).to eq(artigo)
    end
  end
  describe "POST 'create'" do
    let(:params) do
      { artigo: attributes_for(:artigo) }
    end
    it 'create a new artigo' do
      expect do
        post :create, params: params
      end.to change(Artigo, :count).by(1)
    end
  end
end
