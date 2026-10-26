local ssqn = include("SSQN.interop")
if ssqn then
    local orderIcon = "\\Icons\\vv23\\q\\jyggalag.dds"
    local thievesGuildIcon = "\\Icons\\SSQN\\TG.dds"
    local icons = {
        vv23 = orderIcon,
        vv23_tg = thievesGuildIcon,
        VV23_ArmourRecovery = orderIcon,
        VV23_SheoRift = orderIcon,
        VV23_TGDwemTurq = thievesGuildIcon,
        VV23_TGInanius = thievesGuildIcon,
        VV23_TGTombIllusion = thievesGuildIcon,
        VV23_slaythegolem = orderIcon,
        vv23_DwrvBarrel = orderIcon,
        vv23_codex_chaos = orderIcon,
        vv23_codex_order = orderIcon,
        vv23_guilty = orderIcon,
        vv23_guilty_brother = orderIcon,
        vv23_guilty_escape = orderIcon,
        vv23_introductions = orderIcon,
        vv23_opposites = orderIcon,
        vv23_tg_intro = thievesGuildIcon,
        vv23_vault = orderIcon,
    }
    for id, icon in pairs(icons) do
        ssqn.registerQIcon(id, icon)
        if id ~= id:lower() then
            ssqn.registerQIcon(id:lower(), icon)
        end
    end
end
