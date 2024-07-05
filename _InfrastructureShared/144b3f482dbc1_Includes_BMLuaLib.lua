local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = {L3_3, L4_4}
L3_3 = "python.exe"
L4_4 = "agentexecutor.exe"
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
  if _FORV_9_.image_path ~= nil and mp.bitand(_FORV_9_.reason_ex, 1) == 1 and contains(_FORV_9_.image_path, L2_2) then
    return mp.CLEAN
  end
end
if L5_5 then
  L1_1 = L5_5
  if L1_1 ~= nil then
    L5_5(L6_6, L1_1, bm.RelatedStringBMReport)
    return L5_5
  end
end
return L5_5
