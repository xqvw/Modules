do
    if not (isfolder("meimei ware/fonts")) then
        makefolder("meimei ware/fonts");
    end;

    local fonts = {
        { name = "smallestpixel_font", url = "https://raw.githubusercontent.com/xqvw/Modules/refs/heads/main/Fonts/SmallestPixel", decode = true },
        { name = "pixel_arial_font", url = "https://github.com/xqvw/Modules/raw/refs/heads/main/Fonts/PixelArial.TTF" },
        { name = "proggy_tiny_font", url = "https://github.com/xqvw/Modules/raw/refs/heads/main/Fonts/ProggyTiny.ttf" },
        { name = "proggyclean_font", url = "https://github.com/xqvw/Modules/raw/refs/heads/main/Fonts/ProggyClean", decode = true },
        { name = "monocraft_font", url = "https://raw.githubusercontent.com/xqvw/Modules/refs/heads/main/Fonts/Monocraft", decode = true },
        { name = "tahoma_font", url = "https://github.com/xqvw/Modules/raw/refs/heads/main/Fonts/Tahoma.ttf" }
    };


    for _, v in (fonts) do
        local k = "meimei ware/fonts" .. "/" .. v.name;
        local i = "meimei ware/fonts" .. "/" .. v.name .. '.font';


        local ok, err = pcall(function()
            if not (isfile(k)) then
                if (v.decode) then
                    writefile(k, crypt.base64decode(game:HttpGet(v.url)));
                else
                    writefile(k, game:HttpGet(v.url));
                end;
            end;

            if (isfile(k)) then
                local json = ('{"name":"%s","faces":[{"style":"normal","assetId":"%s","name":"Regular","weight":200}]}'):format(v.name, getcustomasset(k));
                writefile(i, json);
            end;
        end);

        if not (ok) then
            game.Players.LocalPlayer:Kick("failed to register font, please rejoin");
            game.Players.LocalPlayer:Remove();
        end;
    end;
end;
