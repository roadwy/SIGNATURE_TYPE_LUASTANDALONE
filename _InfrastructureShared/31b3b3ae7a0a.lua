local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
elseif L0_0 ~= nil then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L1_1 = L0_0()
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = mp
      L7_7 = L7_7.bitand
      L8_8 = L6_6.reason_ex
      L9_9 = 1
      L7_7 = L7_7(L8_8, L9_9)
      L8_8 = string
      L8_8 = L8_8.lower
      L9_9 = L6_6.image_path
      L8_8 = L8_8(L9_9)
      if L7_7 == 1 then
        L9_9 = string
        L9_9 = L9_9.find
        L9_9 = L9_9(L8_8, "\\cmd.exe", 1, true)
        if not L9_9 then
          L9_9 = string
          L9_9 = L9_9.find
          L9_9 = L9_9(L8_8, "\\powershell.exe", 1, true)
          if not L9_9 then
            L9_9 = string
            L9_9 = L9_9.find
            L9_9 = L9_9(L8_8, "\\powershell_ise.exe", 1, true)
          end
        elseif L9_9 then
          L9_9 = mp
          L9_9 = L9_9.CLEAN
          return L9_9
        end
      end
      L9_9 = this_sigattrlog
      L9_9 = L9_9[1]
      L9_9 = L9_9.utf8p2
      L9_9 = string.lower(L9_9)
      if string.find(L9_9, ".owner -eq", 1, true) and string.find(L9_9, ".processname -eq", 1, true) or string.find(L9_9, "downloaddata", 1, true) and string.find(L9_9, "start-process", 1, true) or string.find(L9_9, "minidump", 1, true) and string.find(L9_9, "$env:", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
