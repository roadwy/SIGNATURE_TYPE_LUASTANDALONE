local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil or L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):len() > 30 and L0_0:match("(.+\\)([^\\]+)$"):find("\\temp\\...........?.?\\") and L0_0:match("(.+\\)([^\\]+)$"):find("......?.?.?.?_stp.exe") then
  return mp.INFECTED
end
return mp.CLEAN
