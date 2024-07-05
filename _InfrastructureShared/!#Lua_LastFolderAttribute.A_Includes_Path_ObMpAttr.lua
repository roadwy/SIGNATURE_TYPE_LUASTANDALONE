local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_PATH
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L12_12 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 <= 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = normalize_path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.gsub
L2_2 = L0_0
L3_3 = "\\"
L4_4 = ""
L2_2 = L1_1(L2_2, L3_3, L4_4)
if L2_2 == nil or L2_2 >= 12 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "Lua:LastFolder"
L4_4 = string
L4_4 = L4_4.format
L5_5 = "%sCount!%s"
L6_6 = L3_3
L12_12 = L7_7(L8_8)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L7_7(L8_8))
if L2_2 == 0 then
  L5_5 = #L0_0
  if L5_5 == 2 then
    L5_5 = string
    L5_5 = L5_5.sub
    L6_6 = L0_0
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 == ":" then
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = L3_3
      L6_6 = L6_6 .. L7_7 .. L8_8
      L5_5(L6_6)
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = L4_4
      L5_5(L6_6)
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
  end
end
L6_6 = L0_0
L5_5 = L0_0.gsub
L5_5 = L5_5(L6_6, L7_7, L8_8)
L0_0 = L5_5
L5_5 = string
L5_5 = L5_5.gmatch
L6_6 = L0_0
L5_5 = L5_5(L6_6, L7_7)
L6_6 = false
for L10_10 in L5_5, nil, nil do
  if L2_2 >= 0 and L2_2 <= 5 then
    L11_11 = #L10_10
    if L11_11 >= 1 then
      L11_11 = string
      L11_11 = L11_11.format
      L12_12 = "%s%s!"
      L11_11 = L11_11(L12_12, L3_3, tostring(L2_2))
      if L11_11 ~= nil then
        L6_6 = true
        L12_12 = L11_11
        L12_12 = L12_12 .. L10_10
        if #L12_12 <= 63 then
          mp.set_mpattribute(L12_12)
        else
          mp.set_mpattribute(L12_12:sub(1, 63))
          mp.set_mpattribute(L11_11 .. ":longfolder")
        end
      end
    end
  end
  L2_2 = L2_2 - 1
  if L2_2 < 0 then
    break
  end
end
if L6_6 == true then
  L7_7(L8_8)
end
return L7_7
