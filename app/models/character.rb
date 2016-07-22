class Character < ActiveRecord::Base
  belongs_to :User
  validates :name, presence:true

    def add_item(item_name, item_img, item_part)
        if item_part == "helmet"
            self.helmet = item_img
        elsif item_part == "shield"
            self.shield = item_img
        elsif item_part == "weapon"
            self.weapon = item_img
        elsif item_part == "armor"
            self.armor = item_img
        end
    end

    def remove_item(item_part)
        if item_part == "helmet"
            self.helmet = "none"
        elsif item_part == "shield"
            self.shield = "none"
        elsif item_part == "weapon"
            self.weapon = "none"
        elsif item_part == "armor"
            self.armor = "none"
        end
    end

end
