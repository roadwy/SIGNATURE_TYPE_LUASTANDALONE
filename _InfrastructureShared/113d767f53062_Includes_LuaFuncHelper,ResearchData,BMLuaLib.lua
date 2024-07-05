local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = L0_0.ppid
L2_2 = {}
while L0_0 do
  L3_3 = L0_0.image_path
  if L3_3 then
    L3_3 = L0_0.image_path
    L4_4 = L3_3
    L3_3 = L3_3.match
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = table
    L4_4 = L4_4.insert
    L4_4(L5_5, L6_6)
    L4_4 = mp
    L4_4 = L4_4.GetParentProcInfo
    L4_4 = L4_4(L5_5)
    L0_0 = L4_4
  end
end
L3_3 = {}
L4_4 = GetRollingQueueKeys
L4_4 = L4_4(L5_5)
if L4_4 then
  if L5_5 then
    for L8_8, L9_9 in L5_5(L6_6) do
      if contains(L9_9, L2_2) then
        L3_3.RegisteredSrv = L9_9
        break
      end
    end
  end
end
if L5_5 then
  if L6_6 then
    L3_3.HasUntrustedEntities = true
    L3_3.UntrustedEntities = L5_5
  end
end
if L6_6 then
  L8_8 = MpCommon
  L8_8 = L8_8.Base64Encode
  L9_9 = safeJsonSerialize
  L9_9 = L9_9(L3_3)
  L8_8 = L8_8(L9_9, L9_9(L3_3))
  L9_9 = false
  L6_6(L7_7, L8_8, L9_9)
end
return L6_6
