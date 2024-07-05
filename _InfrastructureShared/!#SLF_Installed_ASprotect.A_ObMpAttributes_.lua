local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if string.find(L0_0, "\\appdata\\", 1, true) or string.find(L0_0, "\\program files\\", 1, true) or string.find(L0_0, "\\program files (x86)\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
