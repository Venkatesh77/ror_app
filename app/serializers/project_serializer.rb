class ProjectSerializer < ActiveModel::Serializer
  attributes :title
 # belongs_to :user
  has_one :user
  has_one :category
    #has_one :category, include: :name

end
