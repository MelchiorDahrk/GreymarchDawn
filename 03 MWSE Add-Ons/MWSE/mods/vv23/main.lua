--[[
    Greymarch Dawn
--]]

if not tes3.isModActive("GreymarchDawn.esp")
    and not tes3.isModActive("GreymarchDawn.esm")
then
    return
end

event.register("initialized", function()
    for _, path in ipairs({
        "vv23.ashfall.interop",
        "vv23.cso.interop",
        "vv23.ssqn.interop",
    }) do
        local success, errorMessage = pcall(function() dofile(path) end)
        if not success then
            print(errorMessage)
        end
    end
end)
