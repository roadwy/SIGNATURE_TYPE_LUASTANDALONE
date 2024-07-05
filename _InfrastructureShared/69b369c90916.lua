local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "(%..?.?.?.?)%.lnk")
  if L1_1 ~= nil and (".docx|.docm|.xlsx|.xlsm|.csv|.pptx|.pps|.pptm|.db|.dat|.idx|.gif|.jpg"):find(L1_1, 1, true) then
    return mp.CLEAN
  end
  if L0_0:find("\\reci?ente?\\") then
    return mp.CLEAN
  end
  if L0_0:find("\\microsoft outlook.lnk", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
