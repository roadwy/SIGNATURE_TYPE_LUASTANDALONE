local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.ppid
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.ppid
    L2_2 = mp
    L2_2 = L2_2.GetProcessCommandLine
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.ppid
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L2_2 = L3_3.ppid
  end
end
L3_3, L4_4 = nil, nil
if L2_2 ~= nil then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[2]
  L4_4 = L5_5.image_path
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L6_6 = L5_5
  L5_5 = L5_5.match
  L7_7 = "\\([^\\]+)$"
  L5_5 = L5_5(L6_6, L7_7)
  L3_3 = L5_5
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L0_0
  L7_7 = L3_3
  L5_5 = L5_5(L6_6, L7_7)
  if L5_5 ~= nil and L1_1 == L2_2 then
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  else
    L5_5 = mp
    L5_5 = L5_5.GetParentProcInfo
    L6_6 = L1_1
    L5_5 = L5_5(L6_6)
    if L5_5 ~= nil then
      L6_6 = L5_5.image_path
      if L6_6 ~= nil then
        L6_6 = string
        L6_6 = L6_6.lower
        L7_7 = L5_5.image_path
        L6_6 = L6_6(L7_7)
        L7_7 = L6_6
        L6_6 = L6_6.match
        L8_8 = "\\([^\\]+)$"
        L6_6 = L6_6(L7_7, L8_8)
        if L6_6 ~= nil then
          L7_7 = string
          L7_7 = L7_7.find
          L8_8 = L6_6
          L7_7 = L7_7(L8_8, L3_3)
          if L7_7 ~= nil then
            L7_7 = L5_5.ppid
            if L7_7 == L2_2 then
              L7_7 = mp
              L7_7 = L7_7.INFECTED
              return L7_7
            end
          end
        else
          L7_7 = mp
          L7_7 = L7_7.GetParentProcInfo
          L8_8 = L5_5.ppid
          L7_7 = L7_7(L8_8)
          if L7_7 ~= nil then
            L8_8 = L7_7.image_path
            if L8_8 ~= nil then
              L8_8 = string
              L8_8 = L8_8.lower
              L8_8 = L8_8(L7_7.image_path)
              L8_8 = L8_8.match
              L8_8 = L8_8(L8_8, "\\([^\\]+)$")
              if L8_8 ~= nil and string.find(L8_8, L3_3) and L7_7.ppid == L2_2 then
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
