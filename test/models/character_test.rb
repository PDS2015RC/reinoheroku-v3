require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
    test "should not save character without name" do
         character = Character.new
         assert_not character.save, "saved character without name"
    end

    test "should save" do
        character = Character.new(name: "jbull")
        assert character.save, "nao salvou"
    end

    test "should add item" do
        item_name = "Elmo Dourado"
        item_img = "upg_helmet"
        item_part = "helmet"
        character = Character.new(name: "jbull")
        character.add_item(item_name, item_img, item_part)
        character.save
        assert_equal(character.helmet, item_img, message = "Did not add item")
    end

    test "should remove item" do
        item_part = "shield"
        character = Character.new(name: "jbull", shield: "escudo")
        character.remove_item(item_part)
        character.save
        assert_equal(character.shield, "none", message = "Did not remove item")
    end
end
