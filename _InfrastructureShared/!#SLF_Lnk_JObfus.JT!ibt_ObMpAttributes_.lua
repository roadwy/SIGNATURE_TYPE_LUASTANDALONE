local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "BM_LNK_FILE"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "PACKED_WITH:[CMDEmbedded]"
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = tostring
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 64
L12_12 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L2_2(L3_3, L4_4))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "Lua:LNK_Settings!IsUnicode"
L2_2 = L2_2(L3_3)
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L1_1 = L2_2
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = {}
L3_3 = 0
for L7_7 in L4_4(L5_5, L6_6) do
  L9_9 = L7_7
  L8_8 = L7_7.match
  L10_10 = "([sS][Ee][Tt] [%w.]+)"
  L11_11 = 1
  L12_12 = true
  L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
  if L8_8 ~= nil then
    L9_9 = #L8_8
    if L9_9 > 5 then
      L9_9 = string
      L9_9 = L9_9.sub
      L10_10 = L8_8
      L11_11 = 5
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 == nil then
        L10_10 = mp
        L10_10 = L10_10.CLEAN
        return L10_10
      end
      L10_10 = L2_2[L9_9]
      if L10_10 ~= 1 then
        L10_10 = "%"
        L11_11 = L9_9
        L12_12 = "%"
        L10_10 = L10_10 .. L11_11 .. L12_12
        L11_11 = "!"
        L12_12 = L9_9
        L11_11 = L11_11 .. L12_12 .. "!"
        L12_12 = "%"
        L12_12 = L12_12 .. L9_9 .. ":"
        L2_2[L9_9] = 1
        if L1_1:find(L10_10, 1, true) ~= nil then
          L3_3 = L3_3 + 1
          mp.set_mpattribute("Lua:LnkHasEnvWithPercent")
        elseif L1_1:find(L11_11, 1, true) ~= nil then
          L3_3 = L3_3 + 1
          mp.set_mpattribute("Lua:LnkHasEnvWithBang")
        elseif L1_1:find(L12_12, 1, true) ~= nil then
          L3_3 = L3_3 + 1
          mp.set_mpattribute("Lua:LnkHasEnvWithPercentColon")
        end
        if L3_3 > 2 then
          return mp.INFECTED
        end
      end
    end
  end
end
return L4_4
