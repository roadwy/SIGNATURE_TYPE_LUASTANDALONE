local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
elseif L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L1_1 = L1_1(L2_2, -4)
if L1_1 ~= ".lnk" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L2_2 = L2_2(L0_0)
L0_0 = L2_2
L2_2 = MpCommon
L2_2 = L2_2.GetMountedFileBackingFilePath
L2_2 = L2_2(L0_0)
if L2_2 == nil then
  return mp.CLEAN
end
if mp.GetMotwZoneForFile(L2_2) ~= nil and mp.GetMotwZoneForFile(L2_2) >= 3 then
  mp.set_mpattribute("Lua:LnkFromMountedVolumeWithMotw")
  L1_1 = string.lower(string.sub(L2_2, -4))
  if L1_1 == ".iso" then
    mp.set_mpattribute("Lua:LnkFromMountedIsoWithMotw")
  end
end
return mp.INFECTED
