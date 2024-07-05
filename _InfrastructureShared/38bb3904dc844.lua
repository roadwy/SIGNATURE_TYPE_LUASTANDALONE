local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
elseif L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L1_1 = L0_0()
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = mp
      L7_7 = L7_7.bitand
      L8_8 = L6_6.reason_ex
      L7_7 = L7_7(L8_8, 1)
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(L6_6.image_path)
      if L8_8 == nil or 1 > string.len(L8_8) then
        return mp.CLEAN
      end
      if L7_7 == 1 and (string.find(L8_8, "\\cmd.exe", 1, true) or string.find(L8_8, "\\powershell.exe", 1, true) or string.find(L8_8, "\\pwsh.exe", 1, true) or string.find(L8_8, "\\powershell_ise.exe", 1, true) or string.find(L8_8, "\\pangphip.exe", 1, true) or string.find(L8_8, "\\log-agent.exe", 1, true) or string.find(L8_8, "\\ossec-agent.exe", 1, true) or string.find(L8_8, ":\\windows\\assembly\\", 1, true)) then
        return mp.CLEAN
      end
    end
  end
  return L2_2
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
