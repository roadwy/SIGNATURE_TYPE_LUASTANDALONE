local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 1792 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = tostring
L3_3 = headerpage
L10_10 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L2_2(L3_3))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L3_3 = 0
for L7_7 in L4_4(L5_5, L6_6) do
  L9_9 = L7_7
  L8_8 = L7_7.match
  L10_10 = "([s][e][t] [%w.]+)"
  L8_8 = L8_8(L9_9, L10_10, 1, true)
  if L8_8 ~= nil then
    L9_9 = #L8_8
    if L9_9 > 5 then
      L9_9 = string
      L9_9 = L9_9.sub
      L10_10 = L8_8
      L9_9 = L9_9(L10_10, 5)
      if L9_9 == nil then
        L10_10 = mp
        L10_10 = L10_10.CLEAN
        return L10_10
      end
      L10_10 = L2_2[L9_9]
      if L10_10 ~= 1 then
        L10_10 = "%"
        L10_10 = L10_10 .. L9_9 .. "%"
        L2_2[L9_9] = 1
        if L1_1:find(L10_10, 1, true) ~= nil then
          L3_3 = L3_3 + 1
          mp.set_mpattribute("Lua:ScrHasEnvWithPercent")
        else
          return mp.CLEAN
        end
        if L3_3 > 5 then
          return mp.INFECTED
        end
      end
    end
  end
end
return L4_4
