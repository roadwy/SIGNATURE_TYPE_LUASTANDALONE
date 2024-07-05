local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L5_5 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 > 47 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = " "
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.gsub
  L3_3 = "%s"
  L4_4 = "/x20"
  L1_1 = L1_1(L2_2, L3_3, L4_4)
  L0_0 = L1_1
  if L0_0 ~= nil then
    L1_1 = #L0_0
  elseif L1_1 > 47 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = "Lua:FnameAttr!"
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = L1_1
L4_4 = L0_0
L3_3 = L3_3 .. L4_4
L2_2(L3_3)
L2_2 = nil
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L0_0
L5_5 = #L0_0
L5_5 = L5_5 - 3
L3_3 = L3_3(L4_4, L5_5, #L0_0 - 3)
if L3_3 == "." then
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L0_0
  L5_5 = -3
  L3_3 = L3_3(L4_4, L5_5)
  L2_2 = L3_3
else
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L0_0
  L5_5 = #L0_0
  L5_5 = L5_5 - 4
  L3_3 = L3_3(L4_4, L5_5, #L0_0 - 4)
  if L3_3 == "." then
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L0_0
    L5_5 = -4
    L3_3 = L3_3(L4_4, L5_5)
    L2_2 = L3_3
  else
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L0_0
    L5_5 = #L0_0
    L5_5 = L5_5 - 2
    L3_3 = L3_3(L4_4, L5_5, #L0_0 - 2)
    if L3_3 == "." then
      L3_3 = string
      L3_3 = L3_3.sub
      L4_4 = L0_0
      L5_5 = -2
      L3_3 = L3_3(L4_4, L5_5)
      L2_2 = L3_3
    end
  end
end
if L2_2 ~= nil then
  L3_3 = #L2_2
  if L3_3 > 1 then
    L3_3 = "Lua:FileExtensionAttr!"
    L4_4 = L2_2
    L3_3 = L3_3 .. L4_4
    L4_4 = mp
    L4_4 = L4_4.set_mpattribute
    L5_5 = L3_3
    L4_4(L5_5)
    L4_4 = string
    L4_4 = L4_4.sub
    L5_5 = L0_0
    L4_4 = L4_4(L5_5, 1, #L0_0 - (#L2_2 + 1))
    L5_5 = "Lua:FnameNoExAttr!"
    L5_5 = L5_5 .. L4_4
    mp.set_mpattribute(L5_5)
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
