require 'rails_helper'

RSpec.describe "WordParts", type: :request do
  describe "GET /phonics_levels/:phonics_level_id/word_parts" do
    let!(:phonics_level) { PhonicsLevel.create!(level_number: 1) }
    let!(:cat) { WordPart.create!(label: "cat", phonics_level: phonics_level, position: 1) }
    let!(:dog) { WordPart.create!(label: "dog", phonics_level: phonics_level, position: 2) }

    it "returns all word parts for the level" do
      get "/phonics_levels/#{phonics_level.id}/word_parts"

      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(2)
    end

    it "returns word parts ordered by position" do
      get "/phonics_levels/#{phonics_level.id}/word_parts"

      json_response = JSON.parse(response.body)
      expect(json_response.first["label"]).to eq("cat")
      expect(json_response.second["label"]).to eq("dog")
    end

    context "when phonics level does not exist" do
      it "returns a 404 status" do
        get "/phonics_levels/99999/word_parts"

        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
