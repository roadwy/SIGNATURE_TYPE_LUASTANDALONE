local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L0_0 = L2_2[2]
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L0_0 = L2_2[3]
  else
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = isnull
L3_3 = L0_0.utf8p1
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = isnull
  L3_3 = L0_0.utf8p2
  L2_2 = L2_2(L3_3)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0.utf8p1
L4_4 = "imagename:(.+);targetprocessppid:(%d+):(%d+)$"
L4_4 = L2_2(L3_3, L4_4)
L5_5 = string
L5_5 = L5_5.match
L6_6 = L0_0.utf8p2
L6_6 = L5_5(L6_6, L7_7)
if not L7_7 then
elseif L7_7 then
  return L7_7
end
if L7_7 == 0 then
  return L7_7
end
for L10_10 = L7_7.SIGATTR_LOG_SZ, 1, -1 do
  L11_11 = sigattr_tail
  L11_11 = L11_11[L10_10]
  if not L1_1 then
    L12_12 = isnull
    L12_12 = L12_12(L11_11.attribute)
    if not L12_12 then
      L12_12 = isnull
      L12_12 = L12_12(L11_11.utf8p1)
      if not L12_12 then
        L12_12 = isnull
        L12_12 = L12_12(L11_11.np2)
        if not L12_12 then
          L12_12 = L11_11.attribute
          if L12_12 == 16427 then
            L12_12 = L11_11.np2
            if L12_12 >= 2031616 then
              L12_12 = string
              L12_12 = L12_12.match
              L12_12 = L12_12(L11_11.utf8p1, "^..*\\(.+)$")
              if not isnull(L12_12) and L2_2 == L12_12 then
                L1_1 = true
              end
            end
          end
        end
      end
    end
  end
end
if not L1_1 then
  return L7_7
end
L10_10 = L2_2
L11_11 = L3_3
L12_12 = tostring
L12_12 = L12_12(L5_5)
L10_10 = L7_7
L11_11 = bm
L11_11 = L11_11.RelatedStringBMReport
L8_8(L9_9, L10_10, L11_11)
L10_10 = L8_8
if not L9_9 then
  L10_10 = L8_8.ppid
  if not L9_9 then
    L10_10 = L8_8.ppid
    L11_11 = "T1055"
    L12_12 = "processinjection"
    L9_9(L10_10, L11_11, L12_12)
  end
end
L10_10 = "pid:%d,ProcessStart:%d"
L11_11 = L3_3
L12_12 = L4_4
L10_10 = TrackPidAndTechniqueBM
L11_11 = L9_9
L12_12 = "T1055"
L10_10(L11_11, L12_12, "processinjection_target")
L10_10 = bm
L10_10 = L10_10.add_threat_process
L11_11 = L9_9
L10_10(L11_11)
L10_10 = TriggerTargetedMemoryScan
L11_11 = L5_5
L12_12 = L9_9
L10_10(L11_11, L12_12)
L10_10 = AddSuspiciousRegion
L11_11 = L5_5
L12_12 = L9_9
L10_10(L11_11, L12_12)
L10_10 = mp
L10_10 = L10_10.INFECTED
return L10_10
