connections = {};

create_connection = function(signal, callback)
    local connection = signal:Connect(callback);
    connections[#connections + 1] = connection;
    return connection;
end;
