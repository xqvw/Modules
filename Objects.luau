local objects = {};



do
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xqvw/Modules/refs/heads/main/Variables.luau"))();



    -- // ( Hit sounds )
    rawset(objects, "hit_sounds", {
        ["bow"] = "rbxassetid://101967493171799",
        ["click"] = "rbxassetid://1347140027",
        ["neverlose"] = "rbxassetid://6607204501",
        ["gamesense"] = "rbxassetid://4817809188",
        ["sparkle"] = "rbxassetid://110241936966089",
        ["rust"] = "rbxassetid://125189826728499",
        ["tf2"] = "rbxassetid://137392628136734",
        ["impact"] = "rbxassetid://6759025689",
        ["pop"] = "rbxassetid://18803667669",
        ["windows xp error"] = "rbxassetid://160715357",
        ["damage"] = "rbxassetid://6361963422"
    });
    rawset(objects, "hit_sounds_key", {"custom","bow","click","neverlose","gamesense","sparkle","rust","tf2","impact","pop","windows xp error","damage"});



    -- // ( Shoot sounds )
    rawset(objects, "shoot_sounds", {
        ["bow"] = "rbxassetid://3442683707",
        ["crossbow"] = "rbxassetid://8616930816",
        ["plasma shotgun"] = "rbxassetid://2605233927",
        ["plasma pistol"] = "rbxassetid://5312934759",
        ["plasma machine"] = "rbxassetid://2605256561",
    });
    rawset(objects, "shoot_sounds_key", {"custom", "bow", "crossbow", "plasma shotgun", "plasma pistol", "plasma machine"});



    -- // ( Auras )
    rawset(objects, "auras", {
        ["angel"] = game:GetObjects("rbxassetid://118170929417615")[1],
        ["flow"] = game:GetObjects("rbxassetid://119913533725648")[1],
        ["heavenly"] = game:GetObjects("rbxassetid://139300897520961")[1],
        ["ribbon"] = game:GetObjects("rbxassetid://132069507632161")[1],
        ["wind"] = game:GetObjects("rbxassetid://80694081850877")[1],
        ["celestial"] = game:GetObjects("rbxassetid://78091083790211")[1],
        ["hearts"] = game:GetObjects("rbxassetid://82132594242160")[1],
        ["triangles"] = game:GetObjects("rbxassetid://103816036088614")[1],
        ["starlight"] = game:GetObjects("rbxassetid://103382181949401")[1]
    });
    rawset(objects, "aura_key", {"angel", "heavenly", "starlight", "celestial", "hearts", "flow", "ribbon", "wind", "triangles"});



    -- // ( Animations )
    rawset(objects, "animation_ids", {
        ["bodybuilder"] = "rbxassetid://3994130516",
        ["bouncy twirl"] = "rbxassetid://14353423348",
        ["floss"] = "rbxassetid://5917570207",
        ["caramelldansen"] = "rbxassetid://97847706148165",
        ["hype"] = "rbxassetid://3696757129",
        ["kicking feet"] = "rbxassetid://112540347880956",
        ["take me under"] = "rbxassetid://6797938823",
        ["invisible"] = "rbxassetid://94292601332790",
        ["fly"] = "rbxassetid://93511411593120"
    });
    rawset(objects, "animations_key", {"fly", "invisible", "custom", "bodybuilder", "bouncy twirl", "floss", "caramelldansen", "hype", "kicking feet", "take me under"});



    -- // ( Hit effects )
    rawset(objects, "hit_effects", {
        ["orbs"] = {
            {
                {
                    ["FlipbookMode"] = Enum.ParticleFlipbookMode.OneShot,
                    ["RotSpeed"] = number_range_new(-10, 10),
                    ["FlipbookFramerate"] = number_range_new(40, 40),
                    ["Drag"] = 1,
                    ["Rate"] = 1,
                    ["Texture"] = "rbxassetid://15011464541",
                    ["Rotation"] = number_range_new(-1000, 1000),
                    ["Transparency"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 0),
                        number_sequence_keypoint_new(1, 1)
                    },
                    ["SpreadAngle"] = vector2_new(-1000, 1000),
                    ["Lifetime"] = number_range_new(0.44999998807907104, 0.44999998807907104),
                    ["LightEmission"] = 1,
                    ["Brightness"] = 10,
                    ["FlipbookLayout"] = Enum.ParticleFlipbookLayout.Grid8x8,
                    ["Size"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 5.5),
                        number_sequence_keypoint_new(1, 5.5)
                    },
                    ["Enabled"] = false
                },
                1
            }
        },
        ["sparkles"] = {
            {
                {
                    ["Acceleration"] = vector3_new(0, -50, 0),
                    ["Color"] = color_sequence_new{
                        color_sequence_keypoint_new(0, Color3.new(1, 0.999969, 0.999985)),
                        color_sequence_keypoint_new(0.25, Color3.new(0.333333, 1, 0)),
                        color_sequence_keypoint_new(1, Color3.new(0.333333, 1, 0.498039))
                    },
                    ["Lifetime"] = number_range_new(0.5, 1),
                    ["LightEmission"] = 1,
                    ["Orientation"] = Enum.ParticleOrientation.VelocityParallel,
                    ["Rate"] = 0,
                    ["Size"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 0.6, 0),
                        number_sequence_keypoint_new(0.5, 0.6, 0),
                        number_sequence_keypoint_new(1, 0, 0)
                    },
                    ["Speed"] = number_range_new(15, 15),
                    ["SpreadAngle"] = vector2_new(50, -50),
                    ["Texture"] = "rbxassetid://18540695516",
                    ["Transparency"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 0, 0),
                        number_sequence_keypoint_new(0.5, 0, 0),
                        number_sequence_keypoint_new(1, 1, 0)
                    },
                    ["Enabled"] = false
                },
                30
            }
        },
        ["vortex"] = {
            {
                {
                    ["Texture"] = "rbxassetid://14426232568",
                    ["Brightness"] = 15,
                    ["Lifetime"] = number_range_new(1, 2),
                    ["Size"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 15, 0),
                        number_sequence_keypoint_new(0.101354, 12, 0),
                        number_sequence_keypoint_new(0.261354, 7.65, 0),
                        number_sequence_keypoint_new(0.461354, 4, 0),
                        number_sequence_keypoint_new(0.713354, 1.41667, 0),
                        number_sequence_keypoint_new(1, 0, 0)
                    },
                    ["Rate"] = 10,
                    ["Rotation"] = number_range_new(-180, 180),
                    ["RotSpeed"] = number_range_new(150, 150),
                    ["LightEmission"] = 1,
                    ["Speed"] = number_range_new(0.01, 0.01),
                    ["Transparency"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 1, 0),
                        number_sequence_keypoint_new(0.500126, 0.14, 0),
                        number_sequence_keypoint_new(1, 0.456667, 0)
                    },
                    ["ZOffset"] = -0.5,
                    ["Enabled"] = false
                },
                3
            }
        },
        ["bubble"] = {
            {
                {
                    ["FlipbookMode"] = Enum.ParticleFlipbookMode.OneShot,
                    ["Color"] = color_sequence_new{
                        color_sequence_keypoint_new(0, color3_fromrgb(85, 255, 255)),
                        color_sequence_keypoint_new(1, color3_fromrgb(85, 255, 255))
                    },
                    ["LockedToPart"] = true,
                    ["Rate"] = 1.5,
                    ["Rotation"] = number_range_new(-5, 5),
                    ["Transparency"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 1),
                        number_sequence_keypoint_new(0.464, 0.768750011920929),
                        number_sequence_keypoint_new(1, 1)
                    },
                    ["Texture"] = "rbxassetid://17086075673",
                    ["Lifetime"] = number_range_new(0.450000001192092896, 0.450000001192092896),
                    ["LightEmission"] = 1,
                    ["Brightness"] = 5,
                    ["Speed"] = number_range_new(0, 0),
                    ["Size"] = number_sequence_new{
                        number_sequence_keypoint_new(0, 0.10000000149011612),
                        number_sequence_keypoint_new(1, 6)
                    },
                    ["Enabled"] = false
                },
                1
            }
        }
    });



    -- // ( Bullet tracers )
    rawset(objects, "bullet_tracers", {
        ["laser"] = {
            Texture = "rbxassetid://12781800668",
            FaceCamera = true,
            TextureLength = 2
        },
        ["line"] = {
            Texture = "http://www.roblox.com/asset/?id=5059545109",
            FaceCamera = true
        },
        ["wavy"] = {
            Texture = "http://www.roblox.com/asset/?id=5320412027",
            FaceCamera = true,
            TextureLength = 1
        },
        ["zigzag"] = {
            Texture = "http://www.roblox.com/asset/?id=1274380363",
            FaceCamera = true,
            TextureLength = 1
        }
    });
    rawset(objects, "bullet_tracers_key", {"laser","line","wavy","zigzag"});



    -- // ( Fonts )
    rawset(objects, "fonts", {
        ["smallest pixel"] = "meimei ware/fonts/smallestpixel_font",
        ["pixel arial"] = "meimei ware/fonts/pixel_arial_font",
        ["proggy tiny"] = "meimei ware/fonts/proggy_tiny_font",
        ["proggy clean"] = "meimei ware/fonts/proggyclean_font",
        ["monocraft"] = "meimei ware/fonts/monocraft_font",
        ["tahoma"] = "meimei ware/fonts/tahoma_font",
        ["ubuntu"] = nil
    });
    rawset(objects, "fonts_key", {"smallest pixel", "pixel arial", "proggy tiny", "proggy clean", "monocraft", "tahoma", "ubuntu"});



    -- // ( Ambience )
    rawset(objects, "ambience_sounds", {
        ["rain"] = "rbxassetid://9112854440",
        ["wind"] = "rbxassetid://6670092634",
        ["night"] = "rbxassetid://179507208",
        ["day"] = "rbxassetid://9112738322"
    });
    rawset(objects, "ambience_key", {"rain", "wind", "night", "day"});



    -- // ( Skyboxes )
    rawset(objects, "skyboxes", {
        ["afternoon"] = { Bk = "rbxassetid://162001887", Dn = "rbxassetid://161998893", Ft = "rbxassetid://162001897", Lf = "rbxassetid://162001904", Rt = "rbxassetid://162001919", Up = "rbxassetid://162001926"},
        ["cloudy"] = { Bk = "rbxassetid://246480323", Dn = "rbxassetid://246480523", Ft = "rbxassetid://246480105", Lf = "rbxassetid://246480549", Rt = "rbxassetid://246480565", Up = "rbxassetid://246480504" },
        ["dawn"] = { Bk = "rbxassetid://9778108979", Dn = "rbxassetid://9778110864", Ft = "rbxassetid://9778101192", Lf = "rbxassetid://9778103329", Rt = "rbxassetid://9778104889", Up = "rbxassetid://9778106496" },
        ["earth"] = { Bk = "rbxassetid://15753305495", Dn = "rbxassetid://15753362674", Ft = "rbxassetid://15753305823", Lf = "rbxassetid://15753310707", Rt = "rbxassetid://15753304774", Up = "rbxassetid://15753304473" },
        ["horizontal milky way"] = { Bk = "rbxassetid://714276643", Dn = "rbxassetid://714276541", Ft = "rbxassetid://714276657", Lf = "rbxassetid://714276648", Rt = "rbxassetid://714276638", Up = "rbxassetid://714276621" },
        ["jungle"] = { Bk = "rbxassetid://214399891", Dn = "rbxassetid://214399887", Ft = "rbxassetid://214399894", Lf = "rbxassetid://214405668", Rt = "rbxassetid://214399899", Up = "rbxassetid://214399889" },
        ["mountains"] = { Bk = "rbxassetid://368385273", Dn = "rbxassetid://48015300", Ft = "rbxassetid://368388290", Lf = "rbxassetid://368390615", Rt = "rbxassetid://368385190", Up = "rbxassetid://48015387" },
        ["pink skies"] = { Bk = "rbxassetid://271042516", Dn = "rbxassetid://271077243", Ft = "rbxassetid://271042556", Lf = "rbxassetid://271042310", Rt = "rbxassetid://271042467", Up = "rbxassetid://271077958" },
        ["saturn"] = { Bk = "rbxassetid://1898724755", Dn = "rbxassetid://1898727189", Ft = "rbxassetid://1898722814", Lf = "rbxassetid://1898729298", Rt = "rbxassetid://1898741025", Up = "rbxassetid://1898736761" },
        ["sunset"] = { Bk = "rbxassetid://264908339", Dn = "rbxassetid://264907909", Ft = "rbxassetid://264909420", Lf = "rbxassetid://264909758", Rt = "rbxassetid://264908886", Up = "rbxassetid://264907379" },
        ["vertical milky way"] = { Bk = "rbxassetid://15146674442", Dn = "rbxassetid://15146673704", Ft = "rbxassetid://15146672849", Lf = "rbxassetid://15146672013", Rt = "rbxassetid://15146671172", Up = "rbxassetid://15146670489" },
        ["white"] = { Bk = "rbxassetid://226025278", Dn = "rbxassetid://226025278", Ft = "rbxassetid://226025278", Lf = "rbxassetid://226025278", Rt = "rbxassetid://226025278", Up = "rbxassetid://226025278" },
        ["ocean sky"] = { Bk = "rbxassetid://11854686548", Dn = "rbxassetid://11854687121", Ft = "rbxassetid://11854693863", Lf = "rbxassetid://11854696162", Rt = "rbxassetid://11854698541", Up = "rbxassetid://11854708161" },
    });
    rawset(objects, "skyboxes_key", {"afternoon", "cloudy", "dawn", "earth", "horizontal milky way", "jungle", "mountains", "pink skies", "saturn", "sunset", "vertical milky way", "white", "ocean sky"});



    -- // ( Weather )
    rawset(objects, "weathers", {
        ["light rain"] = {
            ["LockedToPart"] = true,
            ["Rate"] = 500,
            ["Squash"] = number_sequence_new{
                number_sequence_keypoint_new(0, 3),
                number_sequence_keypoint_new(1, 3)
            },
            ["LightInfluence"] = 0.30000001192092896,
            Transparency = number_sequence_new{
                number_sequence_keypoint_new(0, 0),
                number_sequence_keypoint_new(0.435, 0),
                number_sequence_keypoint_new(1, 0)
            },
            ["Texture"] = "rbxasset://textures/particles/sparkles_main.dds",
            ["Speed"] = number_range_new(30, 50),
            ["Lifetime"] = number_range_new(9, 9),
            ["LightEmission"] = 0.5,
            ["Brightness"] = 2,
            ["EmissionDirection"] = Enum.NormalId.Bottom,
            ["Orientation"] = Enum.ParticleOrientation.FacingCameraWorldUp,
            ["Size"] = number_sequence_new{
                number_sequence_keypoint_new(0, 0.20000000298023224),
                number_sequence_keypoint_new(1, 0.20000000298023224)
            }
        },
        ["heavy rain"] = {
            ["Speed"] = number_range_new(60, 60),
            ["LockedToPart"] = true,
            ["Rate"] = 600,
            ["Texture"] = "rbxassetid://1822883048",
            ["EmissionDirection"] = Enum.NormalId.Bottom,
            ["Transparency"] = number_sequence_new{
                number_sequence_keypoint_new(0, 1),
                number_sequence_keypoint_new(0.25, 0.7842668294906616),
                number_sequence_keypoint_new(0.75, 0.7842668294906616),
                number_sequence_keypoint_new(1, 1)
            },
            ["Lifetime"] = number_range_new(0.800000011920929, 0.800000011920929),
            ["LightEmission"] = 0.05000000074505806,
            ["LightInfluence"] = 0.8999999761581421,
            ["Orientation"] = Enum.ParticleOrientation.FacingCameraWorldUp,
            ["Size"] = number_sequence_new{
                number_sequence_keypoint_new(0, 10),
                number_sequence_keypoint_new(1, 10)
            },
        },
        ["snow"] = {
            ["Transparency"] = number_sequence_new{
                number_sequence_keypoint_new(0, 0.7374999523162842),
                number_sequence_keypoint_new(0.973, 0.768750011920929),
                number_sequence_keypoint_new(1, 1)
            },
            ["Lifetime"] = number_range_new(0.800000011920929, 0.800000011920929),
            ["Texture"] = "rbxassetid://99851851",
            ["SpreadAngle"] = vector2_new(50, 50),
            ["Speed"] = number_range_new(30, 30),
            ["LightEmission"] = 0.5,
            ["Rate"] = 1000,
            ["EmissionDirection"] = Enum.NormalId.Bottom,
            ["Size"] = number_sequence_new{
                number_sequence_keypoint_new(0, 0.25),
                number_sequence_keypoint_new(0.5, 0.35),
                number_sequence_keypoint_new(1, 0.3)
            }
        }
    });
    rawset(objects, "weather_key", {"light rain", "heavy rain", "snow"});



    -- // ( Misc stuff )
    rawset(objects, "materials_key", {"Neon", "ForceField"});
    rawset(objects, "body_parts_key", {
        "Head", "UpperTorso", "LowerTorso",
        "LeftUpperArm", "LeftLowerArm", "RightUpperArm", "RightLowerArm",
        "LeftHand", "RightHand",
        "LeftUpperLeg", "LeftLowerLeg", "RightUpperLeg", "RightLowerLeg",
        "LeftFoot", "RightFoot"
    });
end;


for index, table in pairs(objects) do
    if (index:lower():find("key")) then
        table_sort(table);
    end;
end;



return objects;
