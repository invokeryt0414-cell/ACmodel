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

    end

end