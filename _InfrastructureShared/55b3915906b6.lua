local L0_0, L1_1, L2_2, L3_3
L1_1 = 100000000
L2_2 = 10000000
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L0_0 = L3_3[3]
  L1_1 = 30000000
  L2_2 = 10000000
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[4]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L0_0 = L3_3[4]
    L1_1 = 30000000
    L2_2 = 10000000
  else
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = L0_0.utf8p1
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L0_0.utf8p1)
if not string.find(L3_3, ":\\users\\", 1, true) then
  return mp.CLEAN
end
if string.find(L3_3, "\\citrix\\", 1, true) or string.find(L3_3, "\\assembly\\", 1, true) or string.find(L3_3, ".tmp", 1, true) then
  return mp.CLEAN
end
if sysio.IsFileExists(L3_3) and L1_1 > sysio.GetFileSize(L3_3) and L2_2 < sysio.GetFileSize(L3_3) then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
  bm.add_action("SmsAsyncScanEvent", 1)
  return mp.INFECTED
end
return mp.CLEAN
