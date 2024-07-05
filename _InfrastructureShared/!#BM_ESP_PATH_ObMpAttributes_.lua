local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_DEVICE_CHARACTERISTICS
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 1)
if L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FILE_REMOVABLE_MEDIA"
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 2)
if L2_2 == 2 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FILE_READ_ONLY_DEVICE"
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 16)
if L2_2 == 16 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FILE_REMOTE_DEVICE"
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 32)
if L2_2 == 32 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FILE_DEVICE_IS_MOUNTED"
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 2048)
if L2_2 == 2048 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FILE_CHARACTERISTIC_PNP_DEVICE"
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 262144)
if L2_2 == 262144 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "FILE_PORTABLE_DEVICE"
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.bitand
L3_3 = L1_1
L2_2 = L2_2(L3_3, 264193)
if L2_2 ~= 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_FILEPATH)
L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILEPATH))
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.find
L3_3 = L3_3(L2_2, "\\harddiskvolume..?\\efi\\", 8)
if L3_3 then
  L3_3 = MpCommon
  L3_3 = L3_3.ExpandEnvironmentVariables
  L3_3 = L3_3("%SystemRoot%")
  if L3_3 and not string.find(L3_3, "%", 5, true) and sysio.GetFileFsVolumeInformation(L3_3) and sysio.GetFileFsVolumeInformation(L2_2) and sysio.GetFileFsVolumeInformation(L3_3).VolumeSerialNumber == sysio.GetFileFsVolumeInformation(L2_2).VolumeSerialNumber then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
