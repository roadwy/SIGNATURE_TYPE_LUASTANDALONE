local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\"))
  if L0_0:find(L1_1, 1, true) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
