class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :profile
  has_many :posts

    def short_content
       "#{object.content[0..39]}..."
  end

end