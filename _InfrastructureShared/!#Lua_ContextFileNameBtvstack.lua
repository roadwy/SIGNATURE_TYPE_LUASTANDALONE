local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil or L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if (L0_0:match("(.+\\)([^\\]+)$"):find("\\application data\\$") ~= nil or L0_0:match("(.+\\)([^\\]+)$"):find("\\appdata\\roaming\\$") ~= nil) and L0_0:match("(.+\\)([^\\]+)$") == "btvstack.dll" then
  mp.set_mpattribute("Lua:ContextFileNameBtvstack.A")
end
return mp.CLEAN
