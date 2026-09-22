players = cloneref(game:GetService("Players"));
local_player = players.LocalPlayer;

workspace = cloneref(game:GetService("Workspace"));
camera = workspace.CurrentCamera;
debris = cloneref(game:GetService("Debris"));

replicated_storage = cloneref(game:GetService("ReplicatedStorage"));
run_service = cloneref(game:GetService("RunService"));
sound_service = cloneref(game:GetService("SoundService"));
user_input_service = cloneref(game:GetService("UserInputService"));
collection_service = cloneref(game:GetService("CollectionService"));
hui = cloneref(gethui());


math_random = clonefunction(math.random);
math_floor = clonefunction(math.floor);
task_wait = clonefunction(task.wait);
task_spawn = clonefunction(task.spawn);

table_sort = clonefunction(table.sort);
table_pack = clonefunction(table.pack);

color3_fromrgb = clonefunction(Color3.fromRGB);
