local L0_0, L1_1
L0_0 = isTamperProtectionOn
L1_1 = false
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[24]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[25]
  L1_1 = L1_1.matched
elseif L1_1 then
  L1_1 = versioning
  L1_1 = L1_1.IsSeville
  L1_1 = L1_1()
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L1_1 = L1_1()
if L1_1 then
  for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
    if _FORV_7_.ppid and _FORV_7_.reason_ex and mp.bitand(_FORV_7_.reason_ex, 1) == 1 then
      bm.add_related_process(_FORV_7_.ppid)
    end
  end
end
bm.add_related_string("TpState", tostring(L0_0), bm.RelatedStringBMReport)
return mp.INFECTED
