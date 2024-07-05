local L0_0, L1_1, L2_2
L0_0 = IsKeyInRollingQueue
L1_1 = "KernelCallBackAddress"
L2_2 = "fn_AddressRange_min"
L0_0 = L0_0(L1_1, L2_2, true)
if L0_0 then
  L0_0 = IsKeyInRollingQueue
  L1_1 = "KernelCallBackAddress"
  L2_2 = "fn_AddressRange_max"
  L0_0 = L0_0(L1_1, L2_2, true)
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.utf8p2
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.ppid
L2_2 = nil
_, _, L2_2 = string.find(L0_0, "vmbaseaddress:(%d+);")
L2_2 = tonumber(L2_2)
if not L2_2 or not tonumber(GetRollingQueueKeyValue("KernelCallBackAddress", "fn_AddressRange_max")) or not tonumber(GetRollingQueueKeyValue("KernelCallBackAddress", "fn_AddressRange_min")) then
  return mp.CLEAN
end
if L2_2 <= tonumber(GetRollingQueueKeyValue("KernelCallBackAddress", "fn_AddressRange_max")) and L2_2 >= tonumber(GetRollingQueueKeyValue("KernelCallBackAddress", "fn_AddressRange_min")) then
  bm.add_related_process(L1_1)
  return mp.INFECTED
end
return mp.CLEAN
