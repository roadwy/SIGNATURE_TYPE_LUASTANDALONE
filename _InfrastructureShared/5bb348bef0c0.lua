local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if not L0_0 then
  return mp.CLEAN
end
if string.find(L0_0, "%systemroot%\\", 1, true) or string.find(L0_0, "\\windows\\", 1, true) or string.find(L0_0, "%programfiles%\\", 1, true) or string.find(L0_0, "\\program files\\", 1, true) or string.find(L0_0, "%programfiles(x86)%\\", 1, true) or string.find(L0_0, "\\program files (x86)\\", 1, true) then
  return mp.CLEAN
end
bm.add_related_file(L0_0)
return mp.INFECTED
