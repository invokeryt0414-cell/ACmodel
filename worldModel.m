classdef worldModel

    properties

        enemyPosition
        enemyConfidence
        foodPosition
        foodConfidence
        lastEnemyPosition
        enemyVelocity

    end

    methods

        function obj = worldModel()

            obj.enemyPosition = [];
            obj.enemyConfidence = 0;

            obj.foodPosition = [];
            obj.foodConfidence = 0;

            obj.lastEnemyPosition = [];
            obj.enemyVelocity = [0 0];

        end

        function obj = update(obj, perception)
        
            if ~isempty(perception.enemy)
        
                if ~isempty(obj.enemyPosition)
        
                    obj.enemyVelocity = perception.enemy - obj.enemyPosition;
                    obj.lastEnemyPosition = obj.enemyPosition;
        
                end
        
                obj.enemyPosition = perception.enemy;
                obj.enemyConfidence = 1.0;
        
            else
        
                obj.enemyConfidence = obj.enemyConfidence * 0.95;
                obj.enemyPosition = obj.enemyPosition + obj.enemyVelocity;
        
            end
        
            if ~isempty(perception.food)
        
                obj.foodPosition = perception.food;
                obj.foodConfidence = 1.0;
        
            else
        
                obj.foodConfidence = obj.foodConfidence * 0.98;
        
            end
        
        end

    end

end