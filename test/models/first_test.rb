require "test_helper"

class FirstTest < ActiveSupport::TestCase
    test "esse é primeiro teste"  do
        variavel = "Thomas"   

        assert_equal "Thomas", variavel
    end
end