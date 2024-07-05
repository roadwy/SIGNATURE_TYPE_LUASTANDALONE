local L1_0
function L1_0(A0_1, A1_2, A2_3, A3_4, A4_5)
  local L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15, L15_16, L16_17, L17_18, L18_19, L19_20, L20_21, L21_22, L22_23, L23_24, L24_25, L25_26, L26_27, L27_28, L28_29, L29_30, L30_31, L31_32, L32_33, L33_34, L34_35, L35_36, L36_37, L37_38, L38_39
  L5_6 = 60
  L6_7 = 300
  L7_8 = nil
  L8_9 = 500
  L9_10 = {}
  L10_11 = {}
  L9_10.Processed = L10_11
  L10_11 = {}
  L9_10.FolderEnumeration = L10_11
  L10_11 = {}
  L9_10.ScanPath = L10_11
  L10_11 = {}
  L9_10.FullFilePathScan = L10_11
  L10_11 = {}
  L9_10.RegkeyEnumeration = L10_11
  L10_11 = {}
  L9_10.DeleteRegValue = L10_11
  L10_11 = {}
  L10_11.SIG_CONTEXT = "LUA_GENERIC"
  L10_11.CONTENT_SOURCE = "HEIMDALL_PRECISION_PULSE"
  L10_11.TAG = "NOLOOKUP"
  L11_12 = {}
  for L15_16 in L12_13(L13_14, L14_15) do
    if L16_17 and L17_18 then
      L11_12[L16_17] = L17_18
    end
  end
  for L17_18, L18_19 in L14_15(L15_16) do
    L12_13[L19_20] = L20_21
  end
  if L14_15 then
    L7_8 = L12_13.tracking_id
  end
  if L7_8 == nil then
    L7_8 = "10000000-0000-ffff-0000-000000000001"
  end
  L16_17.TrackingId = L7_8
  L14_15(L15_16, L16_17)
  if L14_15 then
    L6_7 = L12_13.ttl
    L16_17.Ttl = L6_7
    L14_15(L15_16, L16_17)
  end
  if L14_15 then
    L5_6 = L12_13.suppress_ttl
    L16_17.suppress_ttl = L5_6
    L14_15(L15_16, L16_17)
  end
  if L14_15 == nil then
    L15_16(L16_17, L17_18, L18_19, L19_20)
  end
  if L15_16 then
    L8_9 = L15_16 or 500
    if L15_16 == nil then
      L16_17(L17_18, L18_19, L19_20, L20_21)
    else
      L16_17(L17_18, L18_19, L19_20)
      L16_17(L17_18, L18_19, L19_20)
    end
    L18_19.max_scan = L8_9
    L16_17(L17_18, L18_19)
  end
  if L15_16 then
    for L20_21, L21_22 in L17_18(L18_19) do
      L38_39 = L23_24(L24_25)
      L25_26.scanpath = L22_23
      L23_24(L24_25, L25_26)
      L30_31 = 1
      L23_24(L24_25, L25_26, L26_27, L27_28, L28_29, L29_30, L30_31)
      L23_24(L24_25, L25_26, L26_27, L27_28)
      L23_24[L22_23] = L24_25
      L25_26.scanpath = L22_23
      L23_24(L24_25, L25_26)
      if L23_24 then
        L24_25.Exists = true
        L24_25.Excluded = L25_26
      else
        L24_25.Exists = false
      end
    end
  end
  if L15_16 then
    for L20_21, L21_22 in L17_18(L18_19) do
      L38_39 = L23_24(L24_25)
      L26_27.fullfilepathscan = L22_23
      L24_25(L25_26, L26_27)
      L24_25[L22_23] = L25_26
      if L23_24 then
        L25_26.Exists = true
        L25_26.Excluded = L26_27
      else
        L24_25.Exists = false
      end
      L30_31 = 500
      L31_32 = 1
      L24_25(L25_26, L26_27, L27_28, L28_29, L29_30, L30_31, L31_32)
      L24_25(L25_26, L26_27, L27_28, L28_29)
    end
  end
  if L15_16 then
    for L20_21, L21_22 in L17_18(L18_19) do
      L38_39 = L23_24(L24_25)
      L25_26.scanfile = L22_23
      L23_24(L24_25, L25_26)
      L30_31 = 1
      L23_24(L24_25, L25_26, L26_27, L27_28, L28_29, L29_30, L30_31)
    end
  end
  if L15_16 then
    L21_22 = split
    L21_22 = L21_22(L22_23, L23_24)
    for L25_26, L26_27 in L22_23(L23_24) do
      L38_39 = L28_29(L29_30)
      L30_31 = "|"
      if L29_30 == 4 then
        L30_31 = L28_29[3]
        L17_18 = L29_30 or 0
        L30_31 = L28_29[4]
        L18_19 = L29_30 == 1
      elseif L29_30 == 5 then
        L30_31 = L28_29[3]
        L17_18 = L29_30 or 0
        L30_31 = L28_29[4]
        L18_19 = L29_30 == 1
        L30_31 = L28_29[5]
        L19_20 = L29_30 == 1
      else
      end
      if L15_16 ~= nil then
        L30_31 = L9_10.FolderEnumeration
        L31_32 = {}
        L30_31[L15_16] = L31_32
        L30_31 = L9_10.FolderEnumeration
        L30_31 = L30_31[L15_16]
        L31_32 = {}
        L30_31.Files = L31_32
        L30_31 = L9_10.FolderEnumeration
        L30_31 = L30_31[L15_16]
        L31_32 = {}
        L30_31.Subfolders = L31_32
        L30_31 = sysio
        L30_31 = L30_31.FindFiles
        L31_32 = L15_16
        L30_31 = L30_31(L31_32, L32_33, L33_34)
        L31_32 = sysio
        L31_32 = L31_32.FindFolders
        L31_32 = L31_32(L32_33, L33_34, L34_35)
        if L30_31 ~= nil then
          for L35_36, L36_37 in L32_33(L33_34) do
            L37_38 = string
            L37_38 = L37_38.sub
            L38_39 = L36_37
            L37_38 = L37_38(L38_39, L29_30)
            if L19_20 then
              L38_39 = sysio
              L38_39 = L38_39.GetFileSize
              L38_39 = L38_39(L36_37)
              table.insert(L9_10.FolderEnumeration[L15_16].Files, {
                Name = L37_38,
                Size = L38_39,
                LastModified = sysio.GetFileLastWriteTime(L36_37)
              })
            end
            if L18_19 then
              L38_39 = L8_9
              if L38_39 <= MpCommon.AtomicCounterAddNamespaced(A3_4, A2_3, 1) then
                L9_10.FolderEnumeration[L15_16].ExceededMaxScanCounter = true
                break
              else
                AppendToRollingQueueNamespaced("hmdprecisionpulsefullfilepathscan", A2_3, string.lower(L36_37), 1, L6_7, 500, 1)
                mp.TriggerScanResource("file", string.lower(L36_37), 0)
              end
            end
          end
        end
        L34_35.enumeratefolder = L15_16
        L32_33(L33_34, L34_35)
        if L32_33 then
          L33_34.Exists = true
          L33_34.Excluded = L34_35
        else
          L33_34.Exists = false
        end
        if L19_20 == false then
          L35_36.Files = L30_31
          L33_34(L34_35, L35_36)
        end
        if L31_32 ~= nil then
          for L36_37, L37_38 in L33_34(L34_35) do
            L38_39 = string
            L38_39 = L38_39.sub
            L38_39 = L38_39(L37_38, L29_30)
            table.insert(L9_10.FolderEnumeration[L15_16].Subfolders, L38_39)
          end
        end
        L37_38 = 1
        L38_39 = L6_7
        L33_34(L34_35, L35_36, L36_37, L37_38, L38_39, 500, 1)
      end
    end
  end
  if L15_16 then
    for L21_22, L22_23 in L18_19(L19_20) do
      L38_39 = L24_25(L25_26)
      if L15_16 ~= nil then
        L25_26[L15_16] = L26_27
        L25_26.Keys = L26_27
        L25_26.Values = L26_27
        if L25_26 ~= nil then
          L27_28(L28_29, L29_30)
          if L26_27 ~= nil then
            for L30_31, L31_32 in L27_28(L28_29) do
              if L32_33 == 1 then
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                L37_38 = " (REG_SZ)"
                L34_35(L35_36, L36_37)
              elseif L32_33 == 2 then
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                L37_38 = " (REG_EXPAND_SZ)"
                L34_35(L35_36, L36_37)
              elseif L32_33 == 3 then
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                L37_38 = " (REG_BINARY)"
                L34_35(L35_36, L36_37)
              elseif L32_33 == 4 then
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                L37_38 = " (REG_DWORD)"
                L34_35(L35_36, L36_37)
              elseif L32_33 == 7 then
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                for L37_38, L38_39 in L34_35(L35_36) do
                  table.insert(L9_10.RegkeyEnumeration[L15_16].Values[L31_32], L38_39 .. " (REG_MULTI_SZ)")
                end
              elseif L32_33 == 11 then
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                L37_38 = " (REG_QWORD)"
                L34_35(L35_36, L36_37)
              else
                L33_34 = L34_35 or "Value not set"
                L34_35[L31_32] = L35_36
                L37_38 = " (UNKNOWN TYPE)"
                L34_35(L35_36, L36_37)
              end
            end
          end
        end
        L29_30.enumerateregistrykey = L15_16
        L27_28(L28_29, L29_30)
      end
    end
  end
  if L15_16 then
    for L21_22, L22_23 in L18_19(L19_20) do
      L38_39 = L24_25(L25_26)
      if L15_16 ~= nil then
        if L24_25 == 2 then
          L26_27[L24_25] = L27_28
          if L26_27 ~= nil then
            L27_28(L28_29)
            L30_31 = L25_26
            L30_31 = A2_3
            L31_32 = L27_28
            L28_29(L29_30, L30_31, L31_32, L32_33, L33_34, L34_35, L35_36)
            L30_31 = "hmdprecisionpulseregkeyscan"
            L31_32 = A2_3
            L30_31 = mp
            L30_31 = L30_31.TriggerScanResource
            L31_32 = "regkey"
            L30_31(L31_32, L32_33)
            L30_31 = AppendToRollingQueueNamespaced
            L31_32 = "hmdprecisionpulseregkeyvaluescan"
            L37_38 = 1
            L30_31(L31_32, L32_33, L33_34, L34_35, L35_36, L36_37, L37_38)
            L30_31 = pcall
            L31_32 = MpCommon
            L31_32 = L31_32.RollingQueueQueryKeyNamespaced
            L31_32 = L30_31(L31_32, L32_33, L33_34, L34_35)
            L32_33(L33_34, L34_35)
          else
            L27_28[L24_25] = "Key not present"
          end
          L30_31 = L24_25
          L31_32 = " "
          L30_31 = L30_31 .. L31_32 .. L32_33
          L29_30.deleteregistryvalue = L30_31
          L27_28(L28_29, L29_30)
        end
      end
    end
  end
  if L15_16 then
    if L15_16 == nil then
      if L19_20 > 0 then
        L21_22 = L18_19[1]
        L21_22 = L21_22.pid
      end
    end
    L18_19.process = L19_20
    L16_17(L17_18, L18_19)
    L16_17(L17_18, L18_19, L19_20)
  end
  if L15_16 then
    for L20_21, L21_22 in L17_18(L18_19) do
      if L22_23 then
        L25_26.firewall = L22_23
        L23_24(L24_25, L25_26)
        if L23_24 == 3 then
          L27_28 = L27_28 == 2
          L30_31 = 1
          L28_29 = L28_29 == 1
          L24_25(L25_26, L26_27, L27_28, L28_29)
        end
      end
    end
  end
  if L15_16 then
    for L20_21, L21_22 in L17_18(L18_19) do
      L25_26.sinkholeDNS_data = L22_23
      L23_24(L24_25, L25_26)
      if L22_23 then
        L26_27.res = L23_24
        L26_27.isAllowed = L24_25
        L9_10[L25_26] = L26_27
      end
    end
  end
  if L15_16 then
    for L20_21, L21_22 in L17_18(L18_19) do
      L25_26.dnscache = L22_23
      L23_24(L24_25, L25_26)
      if L22_23 then
        for L27_28, L28_29 in L24_25(L25_26) do
          L30_31 = L28_29
          L23_24[L28_29] = L29_30
          L30_31 = "_"
          L31_32 = L28_29
          L9_10[L29_30] = L23_24
        end
      end
    end
  end
  if L15_16 then
    for L21_22, L22_23 in L18_19(L19_20) do
      L26_27.debug = L23_24
      L24_25(L25_26, L26_27)
      for L30_31, L31_32 in L27_28(L28_29) do
        L31_32 = L32_33
        if L25_26 == "PC" then
          L38_39 = L34_35(L35_36, L36_37)
          L17_18[L32_33] = L33_34
        elseif L25_26 == "PCNP" then
          L38_39 = L34_35(L35_36, L36_37)
          L17_18[L32_33] = L33_34
        elseif L25_26 == "RQ" then
          L38_39 = L34_35(L35_36, L36_37)
          L17_18[L32_33] = L33_34
        elseif L25_26 == "AC" then
          L38_39 = L34_35(L35_36, L36_37)
          L17_18[L32_33] = L33_34
        end
      end
    end
    L9_10.debug = L17_18
  end
  L16_17[1] = L15_16
  L10_11.report = L17_18
  L10_11.TAG = "NOLOOKUP"
  L17_18(L18_19, L19_20, L20_21)
end
EnablePrecisionPulse = L1_0
