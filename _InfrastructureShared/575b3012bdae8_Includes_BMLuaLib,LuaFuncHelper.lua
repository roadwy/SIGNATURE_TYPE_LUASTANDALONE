local L0_0, L1_1
L0_0 = IsSenseRelatedProc
L0_0 = L0_0()
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L1_1 = this_sigattrlog
L1_1 = L1_1[20]
L1_1 = L1_1.matched
if L1_1 then
  L0_0.type = "BM_TP_IGNORE"
  L1_1 = this_sigattrlog
  L1_1 = L1_1[20]
  L1_1 = L1_1.reg_block_usermode
  L0_0.block_usermode = L1_1
  L1_1 = this_sigattrlog
  L1_1 = L1_1[20]
  L1_1 = L1_1.utf8p1
  L0_0.event = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[21]
  L1_1 = L1_1.matched
  if L1_1 then
    L0_0.type = "BM_TP_IGNORE"
    L1_1 = this_sigattrlog
    L1_1 = L1_1[21]
    L1_1 = L1_1.reg_block_usermode
    L0_0.block_usermode = L1_1
    L1_1 = this_sigattrlog
    L1_1 = L1_1[21]
    L1_1 = L1_1.utf8p1
    L0_0.event = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[22]
    L1_1 = L1_1.matched
    if L1_1 then
      L0_0.type = "BM_TP_BLOCK"
      L1_1 = this_sigattrlog
      L1_1 = L1_1[22]
      L1_1 = L1_1.reg_block_usermode
      L0_0.block_usermode = L1_1
      L1_1 = this_sigattrlog
      L1_1 = L1_1[22]
      L1_1 = L1_1.utf8p1
      L0_0.event = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[23]
      L1_1 = L1_1.matched
      if L1_1 then
        L0_0.type = "BM_TP_BLOCK"
        L1_1 = this_sigattrlog
        L1_1 = L1_1[23]
        L1_1 = L1_1.reg_block_usermode
        L0_0.block_usermode = L1_1
        L1_1 = this_sigattrlog
        L1_1 = L1_1[23]
        L1_1 = L1_1.utf8p1
        L0_0.event = L1_1
      end
    end
  end
end
L1_1 = next
L1_1 = L1_1(L0_0)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.add_related_string
L1_1("EventInfo", safeJsonSerialize(L0_0), bm.RelatedStringBMReport)
L1_1 = add_parents
L1_1()
L1_1 = reportSessionInformationInclusive
L1_1()
L1_1 = reportRelevantUntrustedEntities
L1_1 = L1_1(0)
if L1_1 and next(L1_1) then
  bm.add_related_string("HasUntrustedEntities", "true", bm.RelatedStringBMReport)
  bm.add_related_string("UntrustedEntities", safeJsonSerialize(L1_1), bm.RelatedStringBMReport)
end
return mp.INFECTED
