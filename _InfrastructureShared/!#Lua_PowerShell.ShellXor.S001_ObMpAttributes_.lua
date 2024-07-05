local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 8192 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfooter
L2_2 = 3328
L3_3 = 768
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 0
for L7_7 in L4_4(L5_5, L6_6) do
  if L7_7 ~= nil then
    L3_3 = L3_3 + 1
  end
end
if L3_3 > 10 then
  L4_4(L5_5)
end
if L4_4 == nil or L4_4 == "" then
  return L5_5
end
for L9_9 in L6_6(L7_7, L8_8) do
  if L9_9 ~= nil and L9_9 ~= "" and string.len(L9_9) > 100 then
    if L5_5 ~= nil and L5_5 ~= "" then
      if string.match(L5_5, "%[byte%[%]%]") ~= nil and string.match(L5_5, "%[byte%[%]%]") ~= "" then
        mp.vfo_add_buffer(L5_5, "[ST]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        mp.set_mpattribute("Lua:ShellBytesInB64.S001")
      end
      if string.match(L5_5, "0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,") ~= nil and string.match(L5_5, "0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,") ~= "" then
        mp.set_mpattribute("Lua:ShellBytesInB64.S002")
      end
      if string.match(L5_5, "Invoke") ~= nil and string.match(L5_5, "Invoke") ~= "" then
        mp.set_mpattribute("Lua:InvokeInB64.S001")
      end
    end
  end
end
return L6_6
