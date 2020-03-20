local function canACFDamage( activated, targetEnt, energy, fraera, angle, inflictor, bone, gun )
    if not IsValid( targetEnt ) then return end
    if not IsValid( inflictor ) then return end

    local targetPerson
    if targetEnt:IsPlayer() then
        targetPerson = targetEnt
    else
        targetPerson = targetEnt:CPPIGetOwner()
    end

    if not IsValid( targetPerson ) then return end

    if gun:GetClass() == "acf_ammo" and targetPerson ~= inflictor then
        return false
    end
end

hook.Add( "ACF_BulletDamage", "CFC_ACFCExtensions_AmmoBoxProtections", canACFDamage )

