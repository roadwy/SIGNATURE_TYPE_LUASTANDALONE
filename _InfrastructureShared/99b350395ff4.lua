local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
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
    L0_0 = L2_2.ppid
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
      L0_0 = L2_2.ppid
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
        L0_0 = L2_2.ppid
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L1_1 = L2_2.utf8p2
      end
    end
  end
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = "\\cmd.exe"
L4_4 = string
L4_4 = L4_4.len
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L5_5 = bm
L5_5 = L5_5.get_process_relationships
L6_6 = L0_0
L6_6 = L5_5(L6_6)
if L6_6 ~= nil then
elseif L7_7 > 3 then
  return L7_7
end
for L10_10, L11_11 in L7_7(L8_8) do
  if L12_12 == 1 then
    if L4_4 < L13_13 then
      if L13_13 == L3_3 then
        L2_2 = L11_11.ppid
        break
      end
    end
  end
end
if L2_2 == nil then
  return L7_7
end
if not L7_7 then
  return L7_7
end
L10_10 = bm
L10_10 = L10_10.get_process_relationships
L11_11 = L2_2
L11_11 = L10_10(L11_11)
for L15_15, L16_16 in L12_12(L13_13) do
  L17_17 = mp
  L17_17 = L17_17.bitand
  L17_17 = L17_17(L16_16.reason_ex, 1)
  if L17_17 == 1 and L4_4 < string.len(L16_16.image_path) and string.sub(L16_16.image_path, -L4_4) == L3_3 then
  end
end
if L8_8 ~= 2 or L9_9 == false then
  return L12_12
end
for L16_16, L17_17 in L13_13(L14_14) do
  if L17_17 ~= nil and string.len(L17_17) >= 4 and string.lower(string.sub(L17_17, -4)) ~= ".exe" and sysio.IsFileExists(L17_17) then
    bm.add_related_file(L17_17)
  end
end
return L13_13
