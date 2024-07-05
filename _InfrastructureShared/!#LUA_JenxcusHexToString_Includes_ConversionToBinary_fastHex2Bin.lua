local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "TARG:VBS/JenxcusHexToString"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = 1
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "TARG:VBS/JenxcusHexToString2"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L0_0 = 2
  else
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L2_2 = "SCPT:VBS/JenxcusHexToString"
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L0_0 = 3
    else
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tostring
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L4_4, L5_5, L6_6 = nil, nil, nil
if L0_0 == 1 then
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = L3_3
  L5_5, L7_7 = "= ?\"(.-)\"", L7_7(L8_8, "= ?\"(.-)\"")
  L5_5, L8_8 = "= ?\"(.-)\"", L7_7(L8_8, "= ?\"(.-)\"")
  L4_4 = L8_8
  _ = L7_7
elseif L0_0 == 2 then
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = L3_3
  L5_5, L6_6, L7_7 = "= ?\"(.-)\".-\"\".-\"\".-\"(.-)\"", nil, L7_7(L8_8, "= ?\"(.-)\".-\"\".-\"\".-\"(.-)\"")
  L5_5, L6_6, L8_8 = "= ?\"(.-)\".-\"\".-\"\".-\"(.-)\"", nil, L7_7(L8_8, "= ?\"(.-)\".-\"\".-\"\".-\"(.-)\"")
  L4_4 = L8_8
  _ = L7_7
elseif L0_0 == 3 then
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = L3_3
  L5_5, L6_6, L7_7 = "= ?\"((.)[0-9A-Za-z][0-9A-Za-z]?.[0-9A-Za-z][0-9A-Za-z]?.[0-9A-Za-z][0-9A-Za-z]?.+)\"", L7_7(L8_8, "= ?\"(.-)\".-\"\".-\"\".-\"(.-)\"")
  L5_5, L6_6, L8_8 = "= ?\"((.)[0-9A-Za-z][0-9A-Za-z]?.[0-9A-Za-z][0-9A-Za-z]?.[0-9A-Za-z][0-9A-Za-z]?.+)\"", L7_7(L8_8, "= ?\"(.-)\".-\"\".-\"\".-\"(.-)\"")
  L4_4 = L8_8
  _ = L7_7
else
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = #L5_5
if L7_7 < 5000 then
  L4_4 = 1
  while true do
    L7_7 = string
    L7_7 = L7_7.len
    L8_8 = L5_5
    L7_7 = L7_7(L8_8)
    if L7_7 < 5000 then
      L7_7 = string
      L7_7 = L7_7.find
      L8_8 = L3_3
      L5_5, L7_7 = "\"(.-)\"", L7_7(L8_8, "\"(.-)\"", L4_4 + 2)
      L5_5, L8_8 = "\"(.-)\"", L7_7(L8_8, "\"(.-)\"", L4_4 + 2)
      L4_4 = L8_8
      _ = L7_7
    elseif L5_5 == nil then
      break
    end
  end
end
L7_7 = #L5_5
if L7_7 < 5000 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7, L8_8 = nil, nil
if L0_0 == 1 then
  L7_7, L8_8 = fastHex2Bin(L5_5, "(..)")
else
  L5_5, _ = L5_5:gsub(L6_6 .. "(.)" .. L6_6, L6_6 .. "0%1" .. L6_6)
  L5_5, _ = L5_5:gsub(L6_6 .. "(.)" .. L6_6, L6_6 .. "0%1" .. L6_6)
  L7_7, L8_8 = fastHex2Bin(L5_5, L6_6 .. "(..)")
end
mp.vfo_add_buffer(L7_7:sub(1, L8_8), "[JenxcusHexToStr]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
