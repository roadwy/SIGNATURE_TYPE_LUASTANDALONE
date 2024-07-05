local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil or L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):len() == 15 and L0_0:match("(.+\\)([^\\]+)$"):find("^service[0-9][0-9][0-9][0-9]%.") == 1 then
  mp.set_mpattribute("Lua:ContextFileNamePutalol")
end
if L0_0:match("(.+\\)([^\\]+)$") == "flashbeat.exe" then
  mp.set_mpattribute("Lua:ContextFileNamePutalol.B")
elseif L0_0:match("(.+\\)([^\\]+)$") == "lolliscan.exe" then
  mp.set_mpattribute("Lua:ContextFileNamePutalol.C")
end
return mp.CLEAN
