local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.lower
L1_1 = L1_1(L0_0)
if L1_1:len() >= 21 and (L1_1:sub(-13) == "\\mpcmdrun.exe" or L1_1:sub(-14) == "\\mpsigstub.exe") then
  return mp.CLEAN
end
if string.find(L1_1, "\\program files", 1, true) and (string.find(L1_1, "\\emailsecurity\\gfiscanm.exe", 1, true) or string.find(L1_1, "\\bin\\ccsvchst.exe", 1, true) or string.find(L1_1, "\\bin64\\ccsvchst.exe", 1, true) or string.find(L1_1, "\\vipre business agent\\sbamsvc.exe", 1, true) or string.find(L1_1, "\\nortonsecurity.exe", 1, true) or string.find(L1_1, "security\\sapissvc.exe", 1, true) or string.find(L1_1, "\\seqrite\\seqrite\\", 1, true) or string.find(L1_1, "\\amsp\\coreserviceshell.exe", 1, true)) then
  return mp.CLEAN
end
return mp.INFECTED
