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

        function obj = update(obj, body)
        
            obj.joy = body.energy;
        
            obj.sadness = body.hunger;
        
        end

    end

end