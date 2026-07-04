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
    AC = AC.move();

    disp("------")
    disp(t)
    disp(AC.body.energy)
    disp(AC.body.hunger)
    disp(AC.position)


end