classdef goal

    properties
        currentGoal
    end

    methods

        function obj = goal()
            obj.currentGoal = "none";
        end

        function obj = update(obj, emotion)

            [~, idx] = max([
                emotion.joy
                emotion.fear
                emotion.anger
                emotion.sadness
                emotion.curiosity
            ]);

            goals = [
                "explore"
                "escape"
                "attack"
                "rest"
                "explore"
            ];

            obj.currentGoal = goals(idx);

        end

    end

end