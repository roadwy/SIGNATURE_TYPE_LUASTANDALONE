local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p2
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L0_0 = L1_1.utf8p2
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.utf8p2
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[5]
            L0_0 = L1_1.utf8p2
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.utf8p2
            if L1_1 ~= nil then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[6]
              L0_0 = L1_1.utf8p2
            end
          end
        end
      end
    end
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 48 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 0
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, L5_5)
elseif L3_3 then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = MpCommon
  L4_4 = L4_4.PathToWin32Path
  L9_9 = L4_4(L5_5)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L4_4(L5_5))
  if L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.sub
    L4_4 = L4_4(L5_5, L6_6, L7_7)
    if L4_4 == "\\\\" and L0_0 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.GetExecutablesFromCommandLine
      L4_4 = L4_4(L5_5)
      for L8_8, L9_9 in L5_5(L6_6) do
        L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
        if sysio.IsFileExists(L9_9) == true then
          if string.sub(L9_9, -4) ~= nil and ({
            [".exe"] = true
          })[string.sub(L9_9, -4)] == true and ({
            ["cmd.exe"] = true,
            ["powershell.exe"] = true,
            ["pwsh.exe"] = true,
            ["cscript.exe"] = true,
            ["wscript.exe"] = true,
            ["mshta.exe"] = true
          })[string.lower((L9_9:match("\\([^\\]+)$")))] ~= true then
            bm.add_related_file(L9_9)
            L2_2 = 1
          end
        end
      end
    end
  end
end
if L2_2 == 1 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
