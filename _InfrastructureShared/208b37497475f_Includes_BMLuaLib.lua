local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\svchost.exe", -12, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = isTamperProtectionOn
L1_1 = L1_1()
if L1_1 then
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L1_1 = L1_1()
  if L1_1 then
    for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
      if _FORV_7_.ppid and mp.bitand(_FORV_7_.reason_ex, 1) == 1 then
        bm.add_related_process(_FORV_7_.ppid)
      end
    end
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
