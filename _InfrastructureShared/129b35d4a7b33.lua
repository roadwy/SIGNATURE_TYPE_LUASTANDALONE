local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[7]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[8]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L1_1 = L1_1(L2_2)
        L0_0 = L1_1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[9]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = string
          L1_1 = L1_1.lower
          L1_1 = L1_1(L2_2)
          L0_0 = L1_1
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[10]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = string
            L1_1 = L1_1.lower
            L1_1 = L1_1(L2_2)
            L0_0 = L1_1
          end
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L2_2)
  if L1_1 > 3 then
    L1_1 = string
    L1_1 = L1_1.find
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L5_5 = true
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      end
    elseif L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      for L5_5, L6_6 in L2_2(L3_3) do
        L7_7 = mp
        L7_7 = L7_7.ContextualExpandEnvironmentVariables
        L7_7 = L7_7(L6_6)
        L6_6 = L7_7
        L7_7 = bm
        L7_7 = L7_7.add_related_file
        L7_7(L6_6)
        L7_7 = string
        L7_7 = L7_7.lower
        L7_7 = L7_7(MpCommon.PathToWin32Path(L6_6))
        if L7_7 == nil then
          return mp.CLEAN
        end
        if not MpCommon.QueryPersistContext(L7_7, "NewPECreatedNoCert") then
          return mp.CLEAN
        end
        if mp.IsKnownFriendlyFile(L7_7, true, false) == true then
          return mp.CLEAN
        end
        if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L7_7) ~= 0 then
          if sysio.GetFileLastWriteTime(L7_7) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L7_7) / 10000000 - 11644473600) > 600 then
            return mp.CLEAN
          end
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
