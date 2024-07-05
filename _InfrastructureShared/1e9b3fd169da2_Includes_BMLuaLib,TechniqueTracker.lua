local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 200000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_.reason == 2 and _FORV_6_.cmd_line ~= nil and (string.lower(_FORV_6_.cmd_line):find("\\lenovo", 1, true) or string.lower(_FORV_6_.cmd_line):find("\\eset\\bts.session", 1, true) or string.lower(_FORV_6_.cmd_line):find("\\tanium", 1, true)) then
    return mp.CLEAN
  end
end
if L3_3 then
  if L3_3 ~= nil then
  end
end
if L2_2 ~= nil then
  if L3_3 then
    if not L3_3 then
      L3_3(L2_2)
      L3_3(this_sigattrlog[13].ppid, true)
      return L3_3
    end
  end
end
return L3_3
