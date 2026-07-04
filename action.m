classdef action

    methods

        function AC = explore(~, AC)
            AC = AC.move();
        end

        function AC = rest(~, AC)
            AC.body.energy = AC.body.energy + 5;
            AC.body.fatigue = max(0, AC.body.fatigue - 5);
        end

        function AC = escape(~, AC, world)
            if AC.position(1) < world.enemy(1)
                AC.position(1) = AC.position(1) - 1;
            else
                AC.position(1) = AC.position(1) + 1;
            end

            if AC.position(2) < world.enemy(2)
                AC.position(2) = AC.position(2) - 1;
            else
                AC.position(2) = AC.position(2) + 1;
            end
        end

        function AC = attack(~, AC, world)
            if AC.position(1) < world.enemy(1)
                AC.position(1) = AC.position(1) + 1;
            else
                AC.position(1) = AC.position(1) - 1;
            end

            if AC.position(2) < world.enemy(2)
                AC.position(2) = AC.position(2) + 1;
            else
                AC.position(2) = AC.position(2) - 1;
            end
        end

    end
end