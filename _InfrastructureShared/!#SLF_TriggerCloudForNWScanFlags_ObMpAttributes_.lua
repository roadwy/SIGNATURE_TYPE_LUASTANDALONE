local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_TRUSTCHECK
elseif L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(42)
if crypto.bitand(L2_2, 2) == 2 then
  return mp.INFECTED
end
return mp.CLEAN
