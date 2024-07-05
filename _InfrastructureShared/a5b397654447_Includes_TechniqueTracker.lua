local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L7_7 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1())
if L0_0 then
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
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L1_1 = L2_2.utf8p2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[4]
          L1_1 = L2_2.utf8p2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[5]
            L1_1 = L2_2.utf8p2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.utf8p2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[6]
              L1_1 = L2_2.utf8p2
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[7]
              L2_2 = L2_2.utf8p2
              if L2_2 ~= nil then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[7]
                L1_1 = L2_2.utf8p2
              end
            end
          end
        end
      end
    end
  end
end
L2_2 = string
L2_2 = L2_2.len
L2_2 = L2_2(L3_3)
if L2_2 < 4 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  if L2_2 ~= "cmd" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  if sysio.IsFileExists(L7_7) then
    bm.add_related_file(L7_7)
  end
end
L6_6 = L1_1
L4_4(L5_5, L6_6)
L6_6 = L3_3
L7_7 = 10
L4_4(L5_5, L6_6, L7_7)
L6_6 = "T1548.002"
L7_7 = "uac_bypass_src"
L4_4(L5_5, L6_6, L7_7)
return L4_4
