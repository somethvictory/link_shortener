class UrlSerializer < ActiveModel::Serializer
  attributes :short_url, :original_name

  def short_url
    "http://localhost:3000/#{object.short_name}"
  end
end
