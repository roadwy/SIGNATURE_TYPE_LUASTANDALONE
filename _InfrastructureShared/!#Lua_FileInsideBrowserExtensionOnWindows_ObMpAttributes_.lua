local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "\\google\\chrome\\user data\\default\\extensions\\", 1, true) then
  mp.set_mpattribute("Lua:Context/FileInsideChromeExtensionOnWindows")
elseif string.find(L0_0, "\\microsoft\\edge\\user data\\default\\extensions\\", 1, true) then
  mp.set_mpattribute("Lua:Context/FileInsideEdgeExtensionOnWindows")
end
return mp.CLEAN
