local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L1_1 = L0_0()
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = string
      L7_7 = L7_7.lower
      L7_7 = L7_7(L6_6.image_path)
      if mp.bitand(L6_6.reason_ex, 1) == 1 and (string.find(L7_7, "\\cmd.exe", 1, true) or string.find(L7_7, "\\powershell.exe", 1, true) or string.find(L7_7, "\\sdiagnhost.exe", 1, true) or string.find(L7_7, "\\qualysagent.exe", 1, true) or string.find(L7_7, "\\pulsesecureservice.exe", 1, true) or string.find(L7_7, "\\javaw.exe", 1, true) or string.find(L7_7, "\\java.exe", 1, true) or string.find(L7_7, "\\ruby.exe", 1, true) or string.find(L7_7, "\\logmein.exe", 1, true) or string.find(L7_7, "\\fasm.exe", 1, true) or string.find(L7_7, ":\\windows\\assembly\\", 1, true) or string.find(L7_7, "\\911 location manager.exe", 1, true)) then
        return mp.CLEAN
      end
    end
  end
  return L2_2
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
