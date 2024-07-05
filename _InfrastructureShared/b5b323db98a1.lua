local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L4_4 = -9
  L4_4 = L2_2(L3_3, L4_4)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4))
  if L1_1 ~= "\\w3wp.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = bm
  L2_2 = L2_2.get_current_process_startup_info
  L2_2 = L2_2()
  L3_3 = L2_2.command_line
  L4_4 = string
  L4_4 = L4_4.find
  L4_4 = L4_4(L3_3, "MSExchangeOABAppPool", 1, true)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = nil
  if this_sigattrlog[1].matched then
    L4_4 = this_sigattrlog[1].utf8p1
  elseif this_sigattrlog[2].matched then
    L4_4 = this_sigattrlog[2].utf8p1
  end
  if L4_4 ~= nil and sysio.IsFileExists(L4_4) then
    bm.add_related_file(L4_4)
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
