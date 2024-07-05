local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L0_0)
elseif L1_1 < 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(MpCommon.PathToWin32Path(L0_0))
if not sysio.IsFileExists(L1_1) then
  return mp.CLEAN
end
if sysio.GetFileSize(L1_1) > 262144000 then
  return mp.INFECTED
end
return mp.CLEAN
