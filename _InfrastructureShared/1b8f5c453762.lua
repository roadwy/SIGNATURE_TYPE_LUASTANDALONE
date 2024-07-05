local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L2_2 = L1_1(L2_2, "(.*)%.(%a+)->%w+/%w+.bin$")
if L1_1 == nil or L2_2 == nil then
  L1_1 = L0_0
else
  L1_1 = L1_1 .. "." .. L2_2
end
L1_1 = MpCommon.PathToWin32Path(L1_1)
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if string.find(L1_1, ".:\\program files %(x86%)\\blp\\api\\office tools\\") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
