local L0_0
L0_0 = versioning
L0_0 = L0_0.GetEngineBuild
L0_0 = L0_0()
if L0_0 >= 16700 then
  L0_0 = versioning
  L0_0 = L0_0.GetOrgID
  L0_0 = L0_0()
  if L0_0 and string.lower(L0_0) == "d7c7c745-195f-4223-9c7a-99fb420fd000" then
    return mp.CLEAN
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
