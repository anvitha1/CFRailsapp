require 'rails_helper'

describe Comment do
  
  context "missing information" do
  
    it "is not valid without text" do
      expect(Comment.new(body: "")).not_to be_valid
    end
    
    it "is not valid without user" do
      expect(Comment.new(user_id: nil)).not_to be_valid
    end
    
    it "is not valid without product" do
      expect(Comment.new(product: nil)).not_to be_valid
    end
    
    it "is not valid without rating" do
      expect(Comment.new(rating: nil)).not_to be_valid
    end
    
    it "is not valid without an integer value" do
      expect(Comment.new(rating: "abc")).not_to be_valid
    end
    
  end
  
end