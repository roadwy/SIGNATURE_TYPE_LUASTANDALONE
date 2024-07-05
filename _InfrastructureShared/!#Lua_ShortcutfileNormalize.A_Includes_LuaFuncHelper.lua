local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:[CMDEmbedded]"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = tostring
  L1_1 = headerpage
  L0_0 = L0_0(L1_1)
  L1_1 = 10
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L0_0
  L4_4 = "\000\000"
  L5_5 = 1
  L2_2 = L2_2(L3_3, L4_4, L5_5, true)
  if L2_2 == nil or L1_1 >= L2_2 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L4_4 = L0_0
  L3_3 = L0_0.sub
  L5_5 = 0
  L3_3 = L3_3(L4_4, L5_5, L2_2)
  L0_0 = L3_3
  L3_3 = nil
  L4_4 = false
  L5_5 = string
  L5_5 = L5_5.find
  L5_5 = L5_5(L0_0, "\"", 1, true)
  if L5_5 ~= nil then
    L5_5 = 0
    L3_3, L5_5 = L0_0:gsub("\"", "")
    if L0_0 and L1_1 < L5_5 then
      L4_4 = true
    end
  end
  L5_5 = string
  L5_5 = L5_5.find
  L5_5 = L5_5(L0_0, "^", 1, true)
  if L5_5 ~= nil then
    L5_5 = 0
    L3_3, L5_5 = L0_0:gsub("^", "")
    if L0_0 and L1_1 < L5_5 then
      L4_4 = true
    end
  end
  if L4_4 == true and L3_3 ~= nil then
    L5_5 = #L3_3
    if L1_1 < L5_5 then
      L5_5 = mp
      L5_5 = L5_5.vfo_add_buffer
      L5_5(L3_3, "[CMDEmbeddedNorm]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      L5_5 = mp
      L5_5 = L5_5.INFECTED
      return L5_5
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
