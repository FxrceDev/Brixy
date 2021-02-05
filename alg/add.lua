local event = game.ReplicatedStorage.Methods["Add"]

event.Fired:Connect(function(value, value2, value3, value4, value5, value6)

    if value or value2 or value3 or value4 or value5 or value6 == "" or nil then

        break
        return("One or more values are invalid")

    else

        local populatedValues = if value, value2, value3, value4, value5, value6 >= "0" then {
            this.Add(populatedValues, KEY)
        }

        local ans = populatedValues[index:1] ++ populatedValues[otherIndex:_]
        return(ans)

    end

end