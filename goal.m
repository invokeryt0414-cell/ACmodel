classdef goal

    properties
        currentGoal
    end

    methods

        function obj = goal()
            obj.currentGoal = "none";
        end

       function obj = update(obj, emotion)
        
            if emotion.fear > 50
                obj.currentGoal = "escape";
                return
            end
        
            [~, idx] = max([
                emotion.joy
                emotion.anger
                emotion.sadness
                emotion.curiosity
            ]);
        
            goals = [
                "explore"
                "attack"
                "rest"
                "explore"
            ];
        
            obj.currentGoal = goals(idx);
        
        end

    end

end