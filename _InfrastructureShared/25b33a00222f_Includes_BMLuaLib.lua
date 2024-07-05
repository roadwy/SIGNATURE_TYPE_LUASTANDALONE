local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
function L0_0(A0_6, A1_7)
  local L2_8, L3_9, L4_10, L5_11
  for L5_11 = 1, A1_7 do
    bm.trigger_sig("VSSAMSI", A0_6, A0_6)
    if mp.GetParentProcInfo(A0_6) == nil or not mp.GetParentProcInfo(A0_6).image_path or not mp.GetParentProcInfo(A0_6).image_path:match("\\([^\\]+)$") then
      break
    end
    A0_6 = mp.GetParentProcInfo(A0_6).ppid
    do break end
    break
  end
end
shadowdel = L0_0
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0(L1_1)
for L4_4, L5_5 in L1_1(L2_2) do
  shadowdel(L5_5, 4)
end
return L1_1
