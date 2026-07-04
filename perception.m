classdef perception

    properties
        enemy
        food
    end

    methods

        function obj = perception()

            obj.enemy = [];
            obj.food = [];

        end

        function obj = update(obj, AC, world)

            obj.enemy = world.enemy;
            obj.food = world.food;

        end

    end

end