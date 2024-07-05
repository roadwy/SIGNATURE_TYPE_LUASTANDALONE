local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L3_3 = nil
if L2_2 ~= nil then
  L4_4 = {}
  L4_4["rpcnetp.exe"] = true
  L4_4["rpcnet.exe"] = true
  L4_4["services.exe"] = true
  L4_4["msmpeng.exe"] = true
  L8_8 = -30
  L9_9 = L6_6(L7_7, L8_8)
  if L6_6 then
    return L6_6
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L0_0 = L4_4.utf8p1
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L3_3 = L4_4.utf8p2
  end
end
if L0_0 ~= nil then
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(L5_5)
  L0_0 = L4_4
  L4_4 = L0_0.match
  L4_4 = L4_4(L5_5, L6_6)
  L1_1 = L4_4
  L4_4 = MpCommon
  L4_4 = L4_4.PathToWin32Path
  L4_4 = L4_4(L5_5)
  L1_1 = L4_4
  L4_4 = mp
  L4_4 = L4_4.ContextualExpandEnvironmentVariables
  L4_4 = L4_4(L5_5)
  L1_1 = L4_4
  if L1_1 ~= nil then
    L4_4 = L1_1.match
    L4_4 = L4_4(L5_5, L6_6)
    if not L4_4 then
      L4_4 = L1_1.match
      L4_4 = L4_4(L5_5, L6_6)
    else
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
    end
    else
      if L3_3 ~= nil then
        L4_4 = mp
        L4_4 = L4_4.GetExecutablesFromCommandLine
        L4_4 = L4_4(L5_5)
        for L8_8, L9_9 in L5_5(L6_6) do
          L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
          if sysio.IsFileExists(L9_9) == true then
            bm.add_related_file(L9_9)
          end
        end
      end
      L4_4 = mp
      L4_4 = L4_4.INFECTED
      return L4_4
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
