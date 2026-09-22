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
math_clamp = clonefunction(math.clamp);
math_max = clonefunction(math.max);
math_min = clonefunction(math.min);
math_abs = clonefunction(math.abs);
math_deg = clonefunction(math.deg);
math_atan2 = clonefunction(math.atan2);
math_tan = clonefunction(math.tan);
math_sin = clonefunction(math.sin);
math_cos = clonefunction(math.cos);
math_rad = clonefunction(math.rad);

math_pi = math.pi;

task_wait = clonefunction(task.wait);
task_spawn = clonefunction(task.spawn);

table_sort = clonefunction(table.sort);
table_pack = clonefunction(table.pack);
table_insert = clonefunction(table.insert);
table_clear = clonefunction(table.clear);

color3_fromrgb = clonefunction(Color3.fromRGB);
color_sequence_new = clonefunction(ColorSequence.new);
color_sequence_keypoint_new = clonefunction(ColorSequenceKeypoint.new);

number_range_new = clonefunction(NumberRange.new)
number_sequence_new = clonefunction(NumberSequence.new);
number_sequence_keypoint_new = clonefunction(NumberSequenceKeypoint.new);

vector2_new = clonefunction(Vector2.new);
vector3_new = clonefunction(Vector3.new);

udim_new = clonefunction(UDim.new);
udim2_new = clonefunction(UDim2.new);
udim2_from_offset = clonefunction(UDim2.fromOffset);
