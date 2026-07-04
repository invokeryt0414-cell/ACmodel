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

            obj.food = [
                        15 5;
                        3 18;
                        19 10
                        ];
            obj.enemy = [11 10];

        end

        function obj = moveEnemy(obj)
        
            obj.enemy = obj.enemy + [1 0];
        
        end
        
    end

end