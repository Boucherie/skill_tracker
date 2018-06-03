require 'csv'

class Post < ApplicationRecord
  has_one_attached :image


  def self.to_csv
    attributes = %w{id title content}

    CSV.generate(headers:true) do |csv|
      csv << attributes

      all.each do |post|
        csv << attributes.map{ |attr| post.send(attr) }
      end
    end
  end

end
