local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p2
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L0_0 = L1_1.utf8p2
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.utf8p2
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[5]
            L0_0 = L1_1.utf8p2
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.utf8p2
            if L1_1 ~= nil then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[6]
              L0_0 = L1_1.utf8p2
            end
          end
        end
      end
    end
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 48 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
elseif L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = MpCommon
  L3_3 = L3_3.PathToWin32Path
  L8_8 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4))
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    if L3_3 == "\\\\" and L0_0 ~= nil then
      L3_3 = mp
      L3_3 = L3_3.GetExecutablesFromCommandLine
      L3_3 = L3_3(L4_4)
      for L7_7, L8_8 in L4_4(L5_5) do
        L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
        if sysio.IsFileExists(L8_8) == true then
          if string.find(string.lower(L8_8), "getupdatedates", 1, true) then
            return mp.CLEAN
          end
          if string.sub(L8_8, -4) ~= nil and ({
            [".exe"] = true
          })[string.sub(L8_8, -4)] ~= true then
            bm.add_related_file(L8_8)
          end
        end
      end
      return L4_4
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
