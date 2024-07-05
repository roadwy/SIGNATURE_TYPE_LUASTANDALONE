local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:len() > 8 and string.sub(L0_0, -8) == ".website" then
  if mp.get_mpattribute("RPF:TopLevelFile") then
    mp.set_mpattribute("Lua:WebsiteFileHasIOAVURL")
  else
    mp.set_mpattribute("Lua:WebsiteChildFileHasIOAVURL")
  end
elseif L0_0:len() > 10 and string.sub(L0_0, -10) == ".appref-ms" then
  if mp.get_mpattribute("RPF:TopLevelFile") then
    mp.set_mpattribute("Lua:ApprefFileHasIOAVURL")
  else
    mp.set_mpattribute("Lua:ApprefChildFileHasIOAVURL")
  end
end
return mp.CLEAN
