local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = string
  L8_8 = L8_8.lower
  L9_9 = L7_7.image_path
  L8_8 = L8_8(L9_9)
  if L8_8 ~= nil then
    L9_9 = string
    L9_9 = L9_9.find
    L9_9 = L9_9(L8_8, "\\svchost.exe", 1, true)
    if not L9_9 then
      L9_9 = string
      L9_9 = L9_9.find
      L9_9 = L9_9(L8_8, "\\msiexec.exe", 1, true)
      if not L9_9 then
        L9_9 = string
        L9_9 = L9_9.find
        L9_9 = L9_9(L8_8, "\\runtimebroker.exe", 1, true)
        if not L9_9 then
          L9_9 = string
          L9_9 = L9_9.find
          L9_9 = L9_9(L8_8, "\\maatunnel.exe", 1, true)
          if not L9_9 then
            L9_9 = string
            L9_9 = L9_9.find
            L9_9 = L9_9(L8_8, "\\cftpstes.exe", 1, true)
            if not L9_9 then
              L9_9 = string
              L9_9 = L9_9.find
              L9_9 = L9_9(L8_8, "\\explorer.exe", 1, true)
              if not L9_9 then
                L9_9 = string
                L9_9 = L9_9.find
                L9_9 = L9_9(L8_8, "\\dllhost.exe", 1, true)
                if not L9_9 then
                  L9_9 = string
                  L9_9 = L9_9.find
                  L9_9 = L9_9(L8_8, "\\msaccess.exe", 1, true)
                  if not L9_9 then
                    L9_9 = string
                    L9_9 = L9_9.find
                    L9_9 = L9_9(L8_8, "\\dwdesk.exe", 1, true)
                    if not L9_9 then
                      L9_9 = string
                      L9_9 = L9_9.find
                      L9_9 = L9_9(L8_8, "\\dsaccessservice.exe", 1, true)
                    end
                  end
                end
              end
            end
          end
        end
      end
    elseif L9_9 then
      L9_9 = mp
      L9_9 = L9_9.CLEAN
      return L9_9
    end
  end
end
if L0_0 ~= nil then
  if L3_3 > 3 then
    if L3_3 ~= nil then
      if L4_4 ~= nil then
      end
    elseif L4_4 then
      return L4_4
    end
    if L4_4 ~= nil then
      for L8_8, L9_9 in L5_5(L6_6) do
        if string.find(L9_9, "\\maslog_runxx.dl") then
          return mp.CLEAN
        end
        L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
        bm.add_related_file(L9_9)
      end
    end
  end
end
return L3_3
