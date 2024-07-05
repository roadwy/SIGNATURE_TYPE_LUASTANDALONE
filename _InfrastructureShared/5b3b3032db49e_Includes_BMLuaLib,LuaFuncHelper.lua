local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
if L0_0 == 0 then
  return L0_0
end
for L3_3 = L0_0.SIGATTR_LOG_SZ, 1, -1 do
  L4_4 = sigattr_tail
  L4_4 = L4_4[L3_3]
  L5_5 = L4_4.matched
  if L5_5 then
    L5_5 = L4_4.attribute
    if L5_5 == 16393 then
      L5_5 = L4_4.utf8p1
      if L5_5 then
        L5_5 = string
        L5_5 = L5_5.lower
        L6_6 = L4_4.utf8p1
        L5_5 = L5_5(L6_6)
        L6_6 = false
        L7_7 = "hklm\\\\software(\\\\policies)?\\\\microsoft\\\\(windows defender|microsoft antimalware)\\\\exclusions\\\\(path|extensions)"
        L8_8 = MpCommon
        L8_8 = L8_8.StringRegExpSearch
        L9_9 = L7_7
        L10_10 = L5_5
        L9_9 = L8_8(L9_9, L10_10)
        _ = L9_9
        L6_6 = L8_8
        if L6_6 then
          L8_8 = bm
          L8_8 = L8_8.get_current_process_startup_info
          L8_8 = L8_8()
          if L8_8 then
            L9_9 = L8_8.ppid
          elseif not L9_9 then
            L9_9 = mp
            L9_9 = L9_9.CLEAN
            return L9_9
          end
          L9_9 = false
          L10_10 = mp
          L10_10 = L10_10.GetProcessCommandLine
          L11_11 = L8_8.ppid
          L10_10 = L10_10(L11_11)
          if L10_10 then
            L11_11 = contains
            L12_12 = L10_10
            L13_13 = "gpsvc"
            L11_11 = L11_11(L12_12, L13_13)
            if L11_11 then
              L9_9 = true
            end
          else
            L11_11 = {L12_12}
            L12_12 = {L13_13, L14_14}
            L13_13 = "svchost.exe"
            L14_14 = "GPSvc"
            L12_12 = checkParentCmdlineCaseInsensitive
            L13_13 = L8_8.ppid
            L14_14 = L11_11
            L15_15 = 5
            L12_12 = L12_12(L13_13, L14_14, L15_15)
            L9_9 = L12_12
          end
          L12_12 = L5_5
          L11_11 = L5_5.match
          L13_13 = "\\\\(.*)"
          L11_11 = L11_11(L12_12, L13_13)
          L12_12 = IsKeyInRollingQueue
          L13_13 = "gpo_broad_exclusion"
          L14_14 = L11_11
          L15_15 = true
          L12_12 = L12_12(L13_13, L14_14, L15_15)
          if L9_9 or L12_12 then
            L13_13 = L5_5
            L14_14 = 604800
            L15_15 = MpCommon
            L15_15 = L15_15.AtomicCounterValue
            L16_16 = L13_13
            L15_15 = L15_15(L16_16)
            L16_16 = {}
            L16_16.has_gpsvc_cmd = tostring(L9_9)
            L16_16.has_rq_gpo = tostring(L12_12)
            if not L15_15 then
              MpCommon.AtomicCounterSet(L13_13, 1, L14_14)
              add_parents()
              bm.add_related_string("AppliedThroughPolicy", safeJsonSerialize(L16_16), bm.RelatedStringBMReport)
              return mp.INFECTED
            elseif L15_15 and L15_15 < 2 then
              MpCommon.AtomicCounterAdd(L13_13, 1)
              add_parents()
              bm.add_related_string("AppliedThroughPolicy", safeJsonSerialize(L16_16), bm.RelatedStringBMReport)
              return mp.INFECTED
            else
              MpCommon.AtomicCounterAdd(L13_13, 1)
              return mp.CLEAN
            end
          else
            L13_13 = add_parents
            L13_13()
            L13_13 = mp
            L13_13 = L13_13.INFECTED
            return L13_13
          end
        end
      end
    end
  end
end
return L0_0
