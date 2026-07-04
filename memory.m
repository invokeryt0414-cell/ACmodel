classdef memory

    properties
        positionLog
        enemyLog
    end

    methods

        function obj = memory()

            obj.positionLog = [];
            obj.enemyLog = [];

        end

        function obj = remember(obj, position)

            obj.positionLog = [obj.positionLog; position];

        end
        function obj = rememberEnemy(obj, enemy)
        
            if ~isempty(enemy)
                obj.enemyLog = [obj.enemyLog; enemy];
            end
        
        end

    end

end