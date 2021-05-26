# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#
class Artwork < ApplicationRecord
    validates :artist_id, uniqueness: { scope: :title }

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

end
