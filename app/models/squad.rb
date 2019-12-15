class Squad < ApplicationRecord
    belongs_to :user
    has_many :playersquads
    has_many :players, through: :playersquads

    def serializable_hash(opts)
        super(opts.merge(only: [:id, :name, :user_id], include: :players))
      end
end
