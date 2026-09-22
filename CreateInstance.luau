create_instance = function(class, properties)
    local new = clonefunction(Instance.new);
    local instance = new(class);

    for property, value in (properties) do;
        instance[property] = value;
    end;

    return instance;
end;
