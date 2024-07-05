local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if (string.sub(L0_0, -8, -8) == "." or string.sub(L0_0, -8, -8) == " ") and (string.sub(L0_0, -7, -5) == "doc" or string.sub(L0_0, -7, -5) == "jpg" or string.sub(L0_0, -7, -5) == "pdf" or string.sub(L0_0, -7, -5) == "zip" or string.sub(L0_0, -7, -5) == "(1)" or string.sub(L0_0, -7, -5) == "   ") and (string.sub(L0_0, -4) == ".bat" or string.sub(L0_0, -4) == ".scr" or string.sub(L0_0, -4) == ".cpl" or string.sub(L0_0, -4) == ".cmd" or string.sub(L0_0, -4) == ".pif") then
  return mp.INFECTED
end
return mp.CLEAN
