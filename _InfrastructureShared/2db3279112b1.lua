local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.ppid
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.GetProcessElevationAndIntegrityLevel
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.ppid
L0_0 = L0_0(L1_1)
L1_1 = L0_0.IntegrityLevel
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_SYSTEM_RID
if L1_1 >= L2_2 then
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  if L1_1 ~= nil then
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = L7_7.image_path
      if L8_8 ~= nil then
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(L7_7.image_path)
        if string.find(L8_8, "\\chromium.exe", -11, true) then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
