local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.ppid
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
  end
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.ppid
L1_1 = L0_0(L1_1)
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 then
    L7_7 = string
    L7_7 = L7_7.find
    L7_7 = L7_7(L6_6.image_path, "svchost.exe", 1, true)
    if L7_7 then
      L7_7 = this_sigattrlog
      L7_7 = L7_7[2]
      L7_7 = L7_7.utf8p1
      if L7_7 and not mp.IsKnownFriendlyFile(L7_7, false, false) then
        mp.ReportLowfi(L7_7, 3377723068)
        return mp.CLEAN
      end
    end
  end
end
return L2_2
