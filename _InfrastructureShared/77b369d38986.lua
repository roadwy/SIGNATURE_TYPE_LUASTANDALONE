local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
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
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".js"] = true
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = string
  L8_8 = L8_8.len
  L9_9 = L7_7
  L8_8 = L8_8(L9_9)
  if L8_8 > 3 then
    L8_8 = sysio
    L8_8 = L8_8.IsFileExists
    L9_9 = L7_7
    L8_8 = L8_8(L9_9)
    if L8_8 then
      L8_8 = string
      L8_8 = L8_8.sub
      L9_9 = L7_7
      L8_8 = L8_8(L9_9, -3)
      L9_9 = L1_1[L8_8]
      if L9_9 then
        L9_9 = string
        L9_9 = L9_9.match
        L9_9 = L9_9(L7_7, "%.zip\\(.+)")
        if 1 >= string.gsub(L9_9, "\\", "") then
          return mp.INFECTED
        end
      end
    end
  end
end
return L3_3
