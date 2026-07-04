classdef body

    properties

        energy      % エネルギー
        hunger      % 空腹
        fatigue     % 疲労

    end

    methods

        function obj = body()

            obj.energy = 100;
            obj.hunger = 0;
            obj.fatigue = 0;

        end
        
    function obj = update(obj)

        obj.hunger = obj.hunger + 1;
        obj.energy = obj.energy - 1;

    end

end

end