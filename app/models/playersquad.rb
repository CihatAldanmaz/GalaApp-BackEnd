class Playersquad < ApplicationRecord
    belongs_to :squad
    belongs_to :player

    # validate :only_eleven

    # def only_eleven
    #     if Playersquad.count >= 11
    #       errors.add :base, 'There can only be one global setting/your message here' 
    #     end
    #   end

end
