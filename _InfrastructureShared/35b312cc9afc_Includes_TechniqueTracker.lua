local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.command_line
    if L1_1 ~= nil then
      L1_1 = L0_0.command_line
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L4_4 = L2_2
      L3_3 = L2_2.match
      L5_5 = "%s+[%-/]en?c?o?d?e?d?c?o?m?m?a?n?d?%s+"
      L3_3 = L3_3(L4_4, L5_5)
      if not L3_3 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L4_4 = bm
      L4_4 = L4_4.get_process_relationships
      L5_5 = L4_4()
      for L9_9, L10_10 in L6_6(L7_7) do
        L11_11 = L10_10.cmd_line
        if L11_11 ~= nil then
          L11_11 = string.lower(L11_11)
          if ({
            ["ruby.exe"] = true,
            ["compattelrunner.exe"] = true,
            ["choco.exe"] = true,
            ["senseir.exe"] = true,
            ["gpscript.exe"] = true,
            ["wuauclt.exe"] = true,
            ["dismhost.exe"] = true
          })[L11_11:match("\\([^\\]+)$")] then
            return mp.CLEAN
          end
        end
      end
      if L6_6 ~= nil then
        if L7_7 == "table" then
          L9_9 = L0_0.ppid
          L10_10 = "obfuscation_"
          if not L8_8 then
            L9_9 = L0_0.ppid
            L10_10 = "obfuscation_"
            L11_11 = 2
          elseif L8_8 then
          end
          if not L8_8 then
          elseif L8_8 then
          end
          if L8_8 then
          end
          if not L8_8 then
          elseif L8_8 then
          end
          if L7_7 > 2 then
            L9_9 = L0_0.ppid
            L10_10 = "T1027"
            L11_11 = "tt-remediate"
            L8_8(L9_9, L10_10, L11_11)
            return L8_8
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
