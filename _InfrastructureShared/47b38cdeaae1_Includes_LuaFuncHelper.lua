local L0_0, L1_1
L0_0 = GetRollingQueueKeyValue
L1_1 = "IsExchgServerTainted"
L0_0 = L0_0(L1_1, "MpEnableTaintTracking")
if L0_0 ~= nil then
  L1_1 = nil
  if this_sigattrlog[1].matched then
    L1_1 = this_sigattrlog[1].utf8p2
  end
  if L1_1 ~= nil then
    bm.add_related_string("FTATAdpativeServerTool", L1_1, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
