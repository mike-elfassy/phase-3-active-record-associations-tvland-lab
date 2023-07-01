class Network < ActiveRecord::Base
  has_many :shows

    def sorry
        p "We're sorry about passing on John Mulaney's pilot"
    end
end
