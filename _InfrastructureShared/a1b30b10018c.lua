local L0_0
if this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if L0_0 ~= nil and string.find(L0_0, "lsquarantinedataurlstring", 1, true) and string.find(L0_0, "/usr/bin/mktemp", 1, true) and string.find(L0_0, "pkill", 1, true) and string.find(L0_0, "curl", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
