local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = string
  L1_1 = L1_1.sub
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= "chrome.exe" then
    L1_1 = string
    L1_1 = L1_1.sub
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 ~= "firefox.exe" then
      L1_1 = string
      L1_1 = L1_1.sub
      L1_1 = L1_1(L2_2, L3_3)
    end
  elseif L1_1 == "iexplore.exe" then
    L1_1 = nil
    for L5_5 = 1, L3_3.SIGATTR_LOG_SZ do
      L6_6 = sigattr_tail
      L6_6 = L6_6[L5_5]
      L6_6 = L6_6.matched
      if L6_6 then
        L6_6 = sigattr_tail
        L6_6 = L6_6[L5_5]
        L6_6 = L6_6.attribute
        if L6_6 == 16393 then
          L6_6 = sigattr_tail
          L6_6 = L6_6[L5_5]
          L1_1 = L6_6.utf8p2
          if L1_1 ~= nil then
            L6_6 = mp
            L6_6 = L6_6.GetExecutablesFromCommandLine
            L6_6 = L6_6(L7_7)
            for L10_10, L11_11 in L7_7(L8_8) do
              L11_11 = mp.ContextualExpandEnvironmentVariables(L11_11)
              if sysio.IsFileExists(L11_11) then
                bm.add_related_file(L11_11)
              end
            end
          end
        end
      end
    end
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
