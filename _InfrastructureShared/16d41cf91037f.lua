local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "pea_dynmem_APIcall"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "pea_32bitmachine"
  L0_0 = L0_0(L1_1)
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7 = nil, nil, nil, nil, nil, nil, nil, nil
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].p1
end
if this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].p1
end
if this_sigattrlog[5].matched then
  L2_2 = this_sigattrlog[5].p1
end
if this_sigattrlog[6].matched then
  L3_3 = this_sigattrlog[6].p1
end
if this_sigattrlog[7].matched then
  L4_4 = this_sigattrlog[7].p1
end
if L0_0 ~= nil and L1_1 ~= nil and L2_2 ~= nil and L3_3 ~= nil and L4_4 ~= nil then
  L5_5 = L0_0:match("^C:\\WINDOWS\\SYSTEM32\\(%u+%.DLL)$")
  L6_6 = L1_1:match("^C:\\WINDOWS\\(%u+%.DLL)$")
  L7_7 = L2_2:match("^C:\\\\(%u+%.DLL)$")
  if L5_5 ~= nil and L6_6 ~= nil and L7_7 ~= nil and L5_5 == L6_6 and L5_5 == L7_7 and L3_3:find("^%a+$") and L4_4:find("^%a+$") then
    return mp.INFECTED
  end
end
return mp.CLEAN
