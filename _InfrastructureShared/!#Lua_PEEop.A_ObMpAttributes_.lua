local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -4
  L1_1 = L1_1(L2_2, L3_3)
  L3_3 = L0_0
  L2_2 = L0_0.match
  L2_2 = L2_2(L3_3, L4_4)
  if not L2_2 then
    L3_3 = L0_0
    L2_2 = L0_0.match
    L2_2 = L2_2(L3_3, L4_4)
    if not L2_2 then
      L3_3 = L0_0
      L2_2 = L0_0.match
      L2_2 = L2_2(L3_3, L4_4)
    end
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  if L1_1 == ".exe" or L1_1 == ".scr" or L1_1 == ".com" then
    L2_2 = {
      L3_3,
      L4_4,
      L5_5,
      L6_6,
      L7_7
    }
    L3_3 = "ALF:Trojan:Win32/"
    L3_3 = 0
    for L7_7, L8_8 in L4_4(L5_5) do
      if L9_9 ~= nil then
        L11_11 = L9_9
        if L10_10 == "table" then
          L3_3 = L3_3 + L10_10
          if L3_3 >= 2 then
            return L10_10
          end
        end
      end
    end
    L11_11 = "TEL:Trojan:Win32/"
    L12_12 = "HSTR:VirTool:Win32/Obfuscator"
    L13_13 = "LoD:VirTool:Win32/Obfuscator"
    for L9_9, L10_10 in L6_6(L7_7) do
      L11_11 = mp
      L11_11 = L11_11.enum_mpattributesubstring
      L12_12 = L10_10
      L11_11 = L11_11(L12_12)
      if L11_11 ~= nil then
        L12_12 = type
        L13_13 = L11_11
        L12_12 = L12_12(L13_13)
        if L12_12 == "table" then
          L12_12 = #L11_11
          if L3_3 == 0 and L5_5 >= 5 then
            L12_12 = mp
            L12_12 = L12_12.INFECTED
            return L12_12
          elseif L3_3 == 1 and L5_5 >= 2 then
            L12_12 = mp
            L12_12 = L12_12.INFECTED
            return L12_12
          end
        end
      end
    end
    for L11_11, L12_12 in L8_8(L9_9) do
      L13_13 = mp
      L13_13 = L13_13.enum_mpattributesubstring
      L13_13 = L13_13(L12_12)
      if L13_13 ~= nil and type(L13_13) == "table" then
        if L3_3 == 1 and L5_5 >= 2 and L7_7 >= 4 then
          return mp.INFECTED
        elseif L5_5 >= 2 and L7_7 >= 6 then
          return mp.INFECTED
        elseif L5_5 + L7_7 >= 4 then
          mp.set_mpattribute("Lua:PEEop.B")
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
