local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil or L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):len() < 6 then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):len() > 10 and L0_0:match("(.+\\)([^\\]+)$"):find("^wpm_v.+%.exe$") == 1 then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.A")
elseif L0_0:match("(.+\\)([^\\]+)$"):len() > 10 and L0_0:match("(.+\\)([^\\]+)$"):find("^minilite_v.+%.exe$") == 1 then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.B")
elseif L0_0:match("(.+\\)([^\\]+)$") == "oursurfing.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.C")
elseif L0_0:match("(.+\\)([^\\]+)$"):len() > 8 and L0_0:match("(.+\\)([^\\]+)$"):find("^amt_.+%.exe$") == 1 and L0_0:match("(.+\\)([^\\]+)$"):find("\\temp\\", 1, true) ~= nil and L0_0:match("(.+\\)([^\\]+)$") ~= "amt_util.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.D")
elseif L0_0:match("(.+\\)([^\\]+)$") == "protectservice.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.E")
elseif L0_0:match("(.+\\)([^\\]+)$") == "winmanpro.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.F")
elseif L0_0:match("(.+\\)([^\\]+)$") == "ihpmserver.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.G")
elseif L0_0:match("(.+\\)([^\\]+)$") == "raydld.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.H")
elseif L0_0:match("(.+\\)([^\\]+)$"):len() > 10 and L0_0:match("(.+\\)([^\\]+)$"):find("^ray_v.+%.exe$") == 1 or L0_0:match("(.+\\)([^\\]+)$"):len() > 10 and L0_0:match("(.+\\)([^\\]+)$"):find("^ray_%d.+%.exe$") == 1 then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.I")
elseif L0_0:match("(.+\\)([^\\]+)$") == "ssfk.exe" then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.J")
elseif L0_0:match("(.+\\)([^\\]+)$"):len() > 10 and L0_0:match("(.+\\)([^\\]+)$"):find("^ssfk_v.+%.exe$") == 1 then
  mp.set_mpattribute("Lua:ContextFileNameSupTab.K")
end
return mp.CLEAN
