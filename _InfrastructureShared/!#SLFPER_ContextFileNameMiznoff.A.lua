local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil or L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):find("\\temp\\", 1, true) ~= nil and L0_0:match("(.+\\)([^\\]+)$"):find("^awh[0-9a-f][0-9a-f][0-9a-f]?[0-9a-f]?%.tmp$") == 1 then
  return mp.INFECTED
end
return mp.CLEAN
