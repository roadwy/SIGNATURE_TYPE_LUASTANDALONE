local L0_0, L1_1, L2_2
L1_1 = 100000000
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L0_0 = L2_2[4]
  L1_1 = 10000000
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L0_0 = L2_2[5]
    L1_1 = 200000
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L0_0 = L2_2[6]
      L1_1 = 2500000
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[7]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L0_0 = L2_2[7]
        L1_1 = 300000
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[8]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L0_0 = L2_2[8]
          L1_1 = 3000000
        else
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
      end
    end
  end
end
L2_2 = L0_0.utf8p1
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.utf8p1
if L2_2 ~= nil and sysio.IsFileExists(L2_2) and L1_1 < sysio.GetFileSize(L2_2) then
  bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
  bm.add_action("SmsAsyncScanEvent", 1)
  return mp.INFECTED
end
return mp.CLEAN
