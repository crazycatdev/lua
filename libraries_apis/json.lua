--credits to alexsyndrome

local lib = {}

local hs = game:GetService("HttpService")

function lib.WriteJson(fname, data)
    writefile(fname..".json", hs:JSONEncode(data))
end

function lib.DoesJsonExist(fname)
    return isfile(fname..".json")
end

function lib.ReadConfig(fname)
    if isfile(fname..".json") then
        local data = hs:JSONDecode(readfile(fname..".json"))
        return data
    else
        return "Failed"
    end
end

return lib
