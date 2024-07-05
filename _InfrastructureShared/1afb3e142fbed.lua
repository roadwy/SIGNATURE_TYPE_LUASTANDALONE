local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_HIGH_RID
if L1_1 >= L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p1
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p1
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L1_1 = L2_2.utf8p1
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L1_1 = L2_2.utf8p1
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.utf8p1
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[4]
          L1_1 = L2_2.utf8p1
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.utf8p1
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[5]
            L1_1 = L2_2.utf8p1
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.utf8p1
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[6]
              L1_1 = L2_2.utf8p1
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[7]
              L2_2 = L2_2.utf8p1
              if L2_2 ~= nil then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[7]
                L1_1 = L2_2.utf8p1
              end
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[8]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[8]
                L2_2 = L2_2.utf8p1
                if L2_2 ~= nil then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[8]
                  L1_1 = L2_2.utf8p1
                end
              end
            end
          end
        end
      end
    end
  end
end
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "^(.*)\\%w+%.%w+"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = MpCommon
  L4_4 = L4_4.ExpandEnvironmentVariables
  L4_4 = L4_4(L2_2)
  L3_3 = L3_3(L4_4, L4_4(L2_2))
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(MpCommon.ExpandEnvironmentVariables("%systemroot%"))
  if string.find(L3_3, L4_4, 1, true) then
    if string.find(L3_3, L4_4 + "\\temp", 1, true) or string.find(L3_3, L4_4 + "\\tmp", 1, true) or string.find(L3_3, L4_4 + "\\tasks", 1, true) or string.find(L3_3, L4_4 + "\\winmetadata", 1, true) or string.find(L3_3, L4_4 + "\\src", 1, true) then
      return mp.CLEAN
    end
    if mp.IsKnownFriendlyFile(L1_1, true, false) == true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
