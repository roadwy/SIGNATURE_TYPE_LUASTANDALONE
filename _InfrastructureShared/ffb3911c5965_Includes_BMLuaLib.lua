local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p2
  L1_1 = L0_0
  L0_0 = L0_0.lower
  L0_0 = L0_0(L1_1)
  L1_1 = contains
  L1_1 = L1_1(L0_0, "treatwarningsaserrors=true")
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.ppid
  if L1_1 ~= nil then
    bm.request_SMS(L1_1, "M")
    bm.add_action("SmsAsyncScanEvent", 100)
    add_parents()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
