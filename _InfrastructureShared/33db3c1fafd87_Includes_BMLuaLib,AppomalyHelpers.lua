local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.ppid
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetProcessAttributeValue
L2_2 = L0_0.ppid
L3_3 = "inherit:PFApp_Parent"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetProcessAttributeValue
  L2_2 = L0_0.ppid
  L3_3 = "PFApp_Parent"
  L1_1 = L1_1(L2_2, L3_3)
end
if not L1_1 then
  L2_2 = IsAppomalyTrackedProcess
  L3_3 = L0_0.ppid
  L3_3 = L2_2(L3_3, 5)
  if not L3_3 then
    return mp.CLEAN
  else
    L1_1 = L3_3
    bm.add_related_string("serverName_extracted", L3_3, bm.RelatedStringBMReport)
  end
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L2_2 = L3_3.utf8p1
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[6]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[6]
    L2_2 = L3_3.utf8p2
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[7]
      L2_2 = L3_3.utf8p2
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[8]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[8]
        L2_2 = L3_3.utf8p2
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[9]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[9]
          L2_2 = L3_3.utf8p1
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[10]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[10]
            L2_2 = L3_3.utf8p1
          else
            L3_3 = this_sigattrlog
            L3_3 = L3_3[11]
            L3_3 = L3_3.matched
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[11]
              L2_2 = L3_3.utf8p1
            else
              L3_3 = this_sigattrlog
              L3_3 = L3_3[12]
              L3_3 = L3_3.matched
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[12]
                L2_2 = L3_3.utf8p1
              end
            end
          end
        end
      end
    end
  end
end
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.add_related_string
L3_3("serverName", L1_1, bm.RelatedStringBMReport)
L3_3 = bm
L3_3 = L3_3.add_related_string
L3_3("tamperingAlert", L2_2, bm.RelatedStringBMReport)
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
