local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = false
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = 0
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p2
    L3_3 = string
    L3_3 = L3_3.gsub
    L4_4 = L2_2
    L4_4 = L3_3(L4_4, L5_5, L6_6)
    L1_1 = L4_4
    L2_2 = L3_3
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
    if L1_1 > 10 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      if L3_3 then
        L0_0 = true
      end
    end
  end
end
if not L0_0 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = 0
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.utf8p2
      L3_3 = string
      L3_3 = L3_3.gsub
      L4_4 = L2_2
      L4_4 = L3_3(L4_4, L5_5, L6_6)
      L1_1 = L4_4
      L2_2 = L3_3
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      L2_2 = L3_3
      if L1_1 > 10 then
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L2_2
        L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
        if not L3_3 then
          L3_3 = string
          L3_3 = L3_3.find
          L4_4 = L2_2
          L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
          if not L3_3 then
            L3_3 = string
            L3_3 = L3_3.find
            L4_4 = L2_2
            L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
            if not L3_3 then
              L3_3 = string
              L3_3 = L3_3.find
              L4_4 = L2_2
              L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
            end
          end
        elseif L3_3 then
          L0_0 = true
        end
      end
    end
  end
end
if L0_0 then
  L1_1 = nil
  L2_2 = true
  L3_3 = 0
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[1]
      L1_1 = L4_4.utf8p2
    end
  end
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L1_1 = L4_4.utf8p2
    end
  end
  L4_4 = this_sigattrlog
  L4_4 = L4_4[3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L1_1 = L4_4.utf8p2
    end
  end
  L4_4 = this_sigattrlog
  L4_4 = L4_4[4]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[4]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L1_1 = L4_4.utf8p2
    end
  end
  if L1_1 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.GetExecutablesFromCommandLine
    L4_4 = L4_4(L5_5)
    for L8_8, L9_9 in L5_5(L6_6) do
      if sysio.IsFileExists(L9_9) then
        L3_3 = L3_3 + 1
        if mp.IsKnownFriendlyFile(L9_9, true, true) == false then
          L2_2 = false
          break
        end
      end
    end
  end
  if L3_3 > 0 and L2_2 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  else
    L4_4 = mp
    L4_4 = L4_4.INFECTED
    return L4_4
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
