local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[1]
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[2]
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L0_0 = L1_1[3]
    else
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = L0_0.utf8p2
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L2_2 = "0x0c347ca0"
L3_3 = mp
L3_3 = L3_3.GetExecutablesFromCommandLine
L3_3 = L3_3(L4_4)
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = string
  L9_9 = L9_9.lower
  L9_9 = L9_9(L8_8)
  if L9_9 ~= string.lower(L0_0.image_path) then
    L9_9 = sysio
    L9_9 = L9_9.IsFileExists
    L9_9 = L9_9(L8_8)
    if L9_9 then
      L9_9 = L0_0.ppid
      L9_9 = L9_9 .. ";" .. L2_2 .. ";" .. L8_8
      table.insert(L1_1, L9_9)
    end
  end
end
if L4_4 > 0 then
  L7_7 = 10
  L4_4(L5_5, L6_6, L7_7)
end
return L4_4
