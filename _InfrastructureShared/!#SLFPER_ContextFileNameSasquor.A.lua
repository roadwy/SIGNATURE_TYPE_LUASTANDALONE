local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil or L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$") == "libglib-2.0-0.dll" and L0_0:match("(.+\\)([^\\]+)$"):find("\\temp\\sea.+%.tmp") then
  return mp.INFECTED
end
return mp.CLEAN
