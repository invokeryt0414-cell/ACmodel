classdef evaluation

    properties
        danger
        reward
        novelty
        importance
        certainty
    end

    methods

        function obj = evaluation()

            obj.danger = 0;
            obj.reward = 0;
            obj.novelty = 0;
            obj.importance = 0;
            obj.certainty = 1;

        end

        function obj = update(obj, AC, world)

            dEnemy = norm(AC.position - world.enemy);

            obj.danger = max(0, 100 - dEnemy * 10);
            obj.reward = AC.body.energy;
            obj.novelty = 50;
            obj.importance = AC.body.hunger;
            obj.certainty = 1 / (1 + obj.danger);

        end

    end

end