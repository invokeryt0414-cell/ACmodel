classdef emotion

    properties

        joy
        fear
        anger
        sadness
        curiosity

    end

    methods

        function obj = emotion()

            obj.joy = 0;
            obj.fear = 0;
            obj.anger = 0;
            obj.sadness = 0;
            obj.curiosity = 50;

        end

        function obj = update(obj, evaluation)
        
            obj.joy = evaluation.reward;
        
            obj.fear = evaluation.danger;
        
            obj.curiosity = evaluation.novelty;
        
            obj.sadness = evaluation.importance;
        
            obj.anger = evaluation.importance * (1 - evaluation.certainty);
        
        end

    end

end