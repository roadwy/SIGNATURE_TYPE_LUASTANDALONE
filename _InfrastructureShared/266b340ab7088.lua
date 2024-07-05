local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 20000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = MpCommon
    L0_0 = L0_0.GetPersistContextCountNoPath
    L1_1 = "UACBypassExp.ZK!dllhost"
    L0_0 = L0_0(L1_1)
    if L0_0 > 0 then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.utf8p1
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
          end
        end
      elseif L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = bm
      L1_1 = L1_1.get_process_relationships
      L2_2 = L1_1()
      for L6_6, L7_7 in L3_3(L4_4) do
        L8_8 = MpCommon
        L8_8 = L8_8.GetProcessElevationAndIntegrityLevel
        L9_9 = L7_7.ppid
        L8_8 = L8_8(L9_9)
        L9_9 = mp
        L9_9 = L9_9.bitand
        L10_10 = L7_7.reason_ex
        L11_11 = bm
        L11_11 = L11_11.RELATIONSHIP_CREATED
        L9_9 = L9_9(L10_10, L11_11)
        L10_10 = bm
        L10_10 = L10_10.RELATIONSHIP_CREATED
        if L9_9 == L10_10 then
          L10_10 = L8_8.IntegrityLevel
          L11_11 = MpCommon
          L11_11 = L11_11.SECURITY_MANDATORY_SYSTEM_RID
          if L10_10 == L11_11 then
            L10_10 = string
            L10_10 = L10_10.lower
            L11_11 = MpCommon
            L11_11 = L11_11.PathToWin32Path
            L12_12 = L7_7.image_path
            L12_12 = L11_11(L12_12)
            L10_10 = L10_10(L11_11, L12_12, L11_11(L12_12))
            L11_11 = string
            L11_11 = L11_11.lower
            L12_12 = MpCommon
            L12_12 = L12_12.PathToWin32Path
            L12_12 = L12_12(this_sigattrlog[4].utf8p1)
            L11_11 = L11_11(L12_12, L12_12(this_sigattrlog[4].utf8p1))
            if L10_10 == L11_11 then
              L12_12 = string
              L12_12 = L12_12.lower
              L12_12 = L12_12(this_sigattrlog[4].utf8p2)
              if not string.find(L12_12, "windowsdefenderatponboardingscript", 1, true) and not string.find(L12_12, "taskhostw.exe", 1, true) then
                bm.add_related_process(L7_7.ppid)
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
