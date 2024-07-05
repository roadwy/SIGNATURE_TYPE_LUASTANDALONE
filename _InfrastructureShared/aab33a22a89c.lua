local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 200000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[5]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.utf8p2
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[2]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.match
        L1_1 = L1_1(this_sigattrlog[5].utf8p2, ";regionsize:(%d+)")
        if L1_1 == nil then
          return mp.CLEAN
        end
        if string.find(L0_0, ";destport=80;", 1, true) or string.find(L0_0, ";destport=443;", 1, true) then
          return mp.CLEAN
        end
        if tonumber(L1_1) < 110000 then
          return mp.CLEAN
        end
        bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
        bm.add_action("SmsAsyncScanEvent", 1000)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
