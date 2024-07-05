local L0_0, L1_1
L0_0 = string.lower(this_sigattrlog[3].utf8p1)
L1_1 = string.lower(this_sigattrlog[4].utf8p1)
if L0_0 ~= nil and L1_1 ~= nil then
  if string.find(L0_0, "c:\\documents and settings\\", 1, true) ~= nil and string.find(L1_1, "c:\\documents and settings\\", 1, true) ~= nil then
    return mp.INFECTED
  end
  if string.find(L0_0, "c:\\users\\", 1, true) ~= nil and string.find(L1_1, "c:\\users\\", 1, true) ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
