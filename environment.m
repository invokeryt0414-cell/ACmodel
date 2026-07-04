classdef environment

    properties
        width
        height
        food
        enemy
    end

    methods

        function obj = environment()

            obj.width = 20;
            obj.height = 20;

            obj.food = [15 5];
            obj.enemy = [8 17];

        end

    end

end