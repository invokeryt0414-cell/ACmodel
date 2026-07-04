clear
clc

world = environment();
AC = agent();

disp("=== World ===")
disp(world.width)
disp(world.height)

disp("=== Agent ===")
disp(AC.position)

disp("=== Body ===")
disp(AC.body.energy)
disp(AC.body.hunger)
disp(AC.body.fatigue)

for t = 1:10

    AC.body = AC.body.update();
    AC.perception = AC.perception.update(AC, world);
    AC.evaluation = AC.evaluation.update(AC, world);
    AC.emotion = AC.emotion.update(AC.evaluation);   % ←先
    
    AC.goal = AC.goal.update(AC.emotion);            % ←後
    
    % 行動
    if AC.goal.currentGoal == "explore"
        AC = AC.action.explore(AC);
    
    elseif AC.goal.currentGoal == "escape"
        AC = AC.action.escape(AC, world);
    
    elseif AC.goal.currentGoal == "attack"
        AC = AC.action.attack(AC, world);
    
    elseif AC.goal.currentGoal == "rest"
        AC = AC.action.rest(AC);
    end
    
    AC.memory = AC.memory.remember(AC.position);
    if ismember(AC.position, world.food, "rows")
        AC = AC.eat();
        disp("Food!")
    end

    disp("------")
    disp(t)
    disp(AC.body.energy)
    disp(AC.body.hunger)
    disp(AC.position)
    


end
disp("=== Memory ===")
disp(AC.memory.positionLog)

disp("=== Emotion ===")
disp(AC.emotion.joy)
disp(AC.emotion.fear)
disp(AC.emotion.anger)
disp(AC.emotion.sadness)
disp(AC.emotion.curiosity)

disp("=== Goal ===")
disp(AC.goal.currentGoal)
