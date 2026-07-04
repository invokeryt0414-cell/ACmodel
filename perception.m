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
        
            vision = 5;
        
            if norm(AC.position - world.enemy) <= vision
                obj.enemy = world.enemy;
            else
                obj.enemy = [];
            end
        
            if norm(AC.position - world.food) <= vision
                obj.food = world.food;
            else
                obj.food = [];
            end
        
        end

    end

end