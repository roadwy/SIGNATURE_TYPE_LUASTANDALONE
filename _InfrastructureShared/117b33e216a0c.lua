local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
L3_3 = L2_2.integrity_level
L4_4 = MpCommon
L4_4 = L4_4.SECURITY_MANDATORY_MEDIUM_RID
if L3_3 > L4_4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.GetProcessElevationAndIntegrityLevel
L4_4 = L2_2.ppid
L3_3 = L3_3(L4_4)
L4_4 = L3_3.IntegrityLevel
if L4_4 > L5_5 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(L5_5)
  L0_0 = L4_4
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L1_1 = L4_4.utf8p2
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(L5_5)
    L0_0 = L4_4
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L1_1 = L4_4.utf8p2
  else
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L4_4 = {
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  "fb2fe984-05f5-4512-9d9b-69d3de61f6d9",
  "c3101a8b-0ee1-4612-bfe9-41ffc1a3c19d",
  "99e2b362-3e4e-4255-9b29-41a7f40777ba",
  "32e26fd9-f435-4a20-a561-35d4b987cfdc",
  "017ce1a6-416f-4684-ae6a-02064420b30a"
}
L8_8 = "c442ac41-9200-4770-8cc0-7cdb4f245c55"
L9_9 = "00024512-0000-0000-c000-000000000046"
L10_10 = "08d512d2-7d97-4e22-b7db-82791106c086"
L11_11 = "83b0e426-d4ee-11d4-bedf-bab7f1eea455"
L12_12 = "2d0e74b6-021a-11d5-9054-00508bf70a94"
L13_13 = "9dc963f3-00ec-4bb0-a344-2d6cc1da19ab"
L14_14 = "f90026a8-a02e-4f1c-a0c6-76955a119600"
L15_15 = "c4f0910e-e0b4-4e68-8086-452730c7a26a"
L16_16 = "6a481801-e531-11cf-a115-00a024158daf"
L17_17 = "cd2425e4-8141-11d0-8ce4-444553540000"
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = string
  L10_10 = L10_10.find
  L11_11 = L0_0
  L12_12 = L9_9
  L13_13 = 1
  L14_14 = true
  L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
  if L10_10 then
    L10_10 = mp
    L10_10 = L10_10.CLEAN
    return L10_10
  end
end
if L5_5 ~= nil then
  if L6_6 > 15 then
    return L6_6
  end
end
if L6_6 then
  L8_8 = L6_6
  L1_1 = L7_7
end
L8_8 = L1_1
if L7_7 then
  L8_8 = L1_1
  L9_9 = ":\\program files\\"
  L10_10 = 1
  L11_11 = true
  if not L7_7 then
    L8_8 = L1_1
    L9_9 = ":\\program files (x86)\\"
    L10_10 = 1
    L11_11 = true
    if not L7_7 then
      L8_8 = L1_1
      L9_9 = ":\\windows\\"
      L10_10 = 1
      L11_11 = true
      if not L7_7 then
        L8_8 = L1_1
        L9_9 = "\\root\\office15\\interceptor.dll"
        L10_10 = -30
        L11_11 = true
        if not L7_7 then
          L8_8 = L1_1
          L9_9 = "\\microsoft shared\\office15\\msoxev.dll"
          L10_10 = -37
          L11_11 = true
          if not L7_7 then
            L8_8 = L1_1
            L9_9 = "\\appdata\\roaming\\microsoft\\mslang\\xml32.dll"
            L10_10 = -43
            L11_11 = true
            if not L7_7 then
              L8_8 = L1_1
              L9_9 = "\\appdata\\local\\microsoft\\onedrive\\"
              L10_10 = 1
              L11_11 = true
              if not L7_7 then
                L8_8 = L1_1
                L9_9 = "\\appdata\\local\\kingsoft\\wps office\\"
                L10_10 = 1
                L11_11 = true
                if not L7_7 then
                  L8_8 = L1_1
                  L9_9 = "\\appdata\\local\\chromium\\update\\"
                  L10_10 = 1
                  L11_11 = true
                  if not L7_7 then
                    L8_8 = L1_1
                    L9_9 = true
                    L10_10 = false
                  end
                end
              end
            end
          end
        end
      end
    end
  elseif L7_7 == true then
    return L7_7
  end
  L8_8 = L1_1
  L9_9 = "(v8_[a-f0-9]*_[a-f0-9]*%.tmp)$"
  if L7_7 ~= nil then
    L8_8 = string
    L8_8 = L8_8.len
    L9_9 = L7_7
    L8_8 = L8_8(L9_9)
    if L8_8 <= 16 then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
  end
  L8_8 = sysio
  L8_8 = L8_8.GetFileLastWriteTime
  L9_9 = L1_1
  L8_8 = L8_8(L9_9)
  L9_9 = sysio
  L9_9 = L9_9.GetLastResult
  L9_9 = L9_9()
  L9_9 = L9_9.Success
  if L9_9 and L8_8 ~= 0 then
    L9_9 = L8_8 / 10000000
    L8_8 = L9_9 - 11644473600
    L9_9 = MpCommon
    L9_9 = L9_9.GetCurrentTimeT
    L9_9 = L9_9()
    if not (L8_8 > L9_9) then
      L10_10 = L9_9 - L8_8
    elseif L10_10 > 600 then
      L10_10 = mp
      L10_10 = L10_10.CLEAN
      return L10_10
    end
  end
  if L0_0 ~= nil then
    L9_9 = string
    L9_9 = L9_9.len
    L10_10 = L0_0
    L9_9 = L9_9(L10_10)
    if L9_9 > 24 then
      L9_9 = nil
      L11_11 = L0_0
      L10_10 = L0_0.gsub
      L12_12 = "hkcu"
      L13_13 = "hklm"
      L10_10 = L10_10(L11_11, L12_12, L13_13)
      L0_0 = L10_10
      L10_10 = sysio
      L10_10 = L10_10.RegOpenKey
      L11_11 = L0_0
      L10_10 = L10_10(L11_11)
      L9_9 = L10_10
      if L9_9 ~= nil then
        L10_10 = sysio
        L10_10 = L10_10.GetRegValueAsString
        L11_11 = L9_9
        L12_12 = ""
        L10_10 = L10_10(L11_11, L12_12)
        L11_11 = string
        L11_11 = L11_11.lower
        L12_12 = mp
        L12_12 = L12_12.ContextualExpandEnvironmentVariables
        L13_13 = L10_10
        L17_17 = L12_12(L13_13)
        L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L12_12(L13_13))
        L10_10 = L11_11
        if L10_10 ~= nil then
          L11_11 = string
          L11_11 = L11_11.len
          L12_12 = L10_10
          L11_11 = L11_11(L12_12)
          if L11_11 > 0 and L10_10 ~= L1_1 then
            L11_11 = 1
            L12_12 = nil
            L13_13 = 0
            L14_14 = 0
            L15_15 = 0
            L16_16, L17_17 = nil, nil
            while L13_13 < 8 do
              L16_16, L17_17 = string.find(L10_10, "\\", L11_11, true)
              if L16_16 == nil then
                break
              end
              L12_12 = string.sub(L10_10, L11_11, L16_16)
              if string.find(L1_1, "\\", L11_11, true) == L16_16 and string.find(L1_1, L12_12, L11_11, true) then
                L14_14 = L14_14 + 1
              end
              L11_11 = L17_17 + 1
              L15_15 = L15_15 + 1
            end
            if L14_14 < 2 and L15_15 > 2 then
              bm.add_related_file(L1_1)
              bm.add_threat_file(L1_1)
              mp.ReportLowfi(L1_1, 1827652614)
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
return L7_7
