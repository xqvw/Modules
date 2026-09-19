
local signals = {};

do
    local connection = {};
    connection["__index"] = connection;


    function connection.new(index, callback)
        local callbacks = index.callbacks;
        callbacks[#callbacks + 1] = callback;
        return setmetatable({
            callback = callback,
            signals = index
        }, connection);
    end;

    function connection:Disconnect()
        local callbacks = self.signals.callbacks;
        local callback = self.callback;

        for i = 1, #callbacks do
            if (callbacks[i] == callback) then
                table.remove(callbacks, i);
                break;
            end;
        end;
    end;


    signals["__index"] = signals;


    function signals.new()
        return setmetatable({
            callbacks = {}
        }, signals);
    end;


    function signals:Fire(...)
        local callbacks = self.callbacks;
        for i = 1, #callbacks do
            task.spawn(callbacks[i], ...);
        end;
    end;


    function signals:Connect(callback)
        return connection.new(self, callback);
    end;
end;

return signals;
