class User < ApplicationRecord
    has_secure_password
    has_many :squads
  
  
      def serializable_hash(opts)
          super(opts.merge(only: [:id, :username], include: :squads))
        end
  end
  