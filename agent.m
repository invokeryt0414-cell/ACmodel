classdef agent

    properties
        position
        body
        memory
        emotion
        evaluation
        goal
        action
        perception
        worldModel
    end

    methods

        function obj = agent()

            obj.position = [10 10];
            obj.body = body();
            obj.memory = memory();
            obj.emotion = emotion();
            obj.evaluation = evaluation();
            obj.goal = goal();
            obj.action = action();
            obj.perception = perception();
            obj.worldModel = worldModel();

        end
        function obj = move(obj)

            obj.position(1) = obj.position(1) + randi([-1 1]);
            obj.position(2) = obj.position(2) + randi([-1 1]);
        
        end
        function obj = eat(obj)

            obj.body.hunger = 0;
            obj.body.energy = 100;
        
        end


    end

end