do
    if not (isfolder("meimei ware/fonts")) then
        makefolder("meimei ware/fonts");
    end;

    local fonts = {
        { name = "smallestpixel_font", url= "https://github.com/xqvw/Fonts/raw/refs/heads/main/smallestpixel", decode = true },
        { name = "pixel_arial_font", url = "https://github.com/xqvw/Fonts/raw/refs/heads/main/pixelarial.TTF" },
        { name = "proggy_tiny_font", url = "https://github.com/xqvw/Fonts/raw/refs/heads/main/proggytiny.ttf" },
        { name = "proggyclean_font", url = "https://github.com/xqvw/Fonts/raw/refs/heads/main/proggyclean", decode = true },
        { name = "monocraft_font", url = "https://github.com/xqvw/Fonts/raw/refs/heads/main/monocraft", decode = true },
        { name = "tahoma_font", url = "https://github.com/xqvw/Fonts/raw/refs/heads/main/tahoma.ttf" }
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
