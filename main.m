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
    AC.evaluation = AC.evaluation.update(AC, world);
    AC.goal = AC.goal.update(AC.emotion);
    AC = AC.move();
    AC.memory = AC.memory.remember(AC.position);
    AC.emotion = AC.emotion.update(AC.evaluation);
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
