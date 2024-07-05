local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L0_0 = L1_1.utf8p1
end
if L0_0 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetMountedFileBackingFilePath
  L1_1 = L1_1(L0_0)
  if L1_1 == nil then
    return mp.CLEAN
  end
  if string.lower(string.sub(L1_1, -4)) ~= ".iso" or string.lower(string.sub(L1_1, -4)) ~= ".img" then
    return mp.CLEAN
  end
  triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/Qakbot.SC")
  bm.add_related_file(L0_0)
  bm.add_related_file(L1_1)
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
