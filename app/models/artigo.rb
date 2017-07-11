class Artigo < ApplicationRecord
  belongs_to :autor, class_name: 'Usuario'
end
