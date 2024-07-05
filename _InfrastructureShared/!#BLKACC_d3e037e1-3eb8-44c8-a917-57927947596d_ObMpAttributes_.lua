local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "d3e037e1-3eb8-44c8-a917-57927947596d"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = false
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_AMSI_CONTENTNAME
L1_1 = L1_1(L2_2)
if L1_1 ~= nil and L1_1 ~= "" then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L1_1)
  L1_1 = L2_2
  L2_2 = #L1_1
  if L2_2 > 10 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "^memscanvfz")
  else
    if L2_2 ~= nil then
      L2_2 = #L1_1
  end
  elseif L2_2 <= 10 then
    L2_2 = #L1_1
    if L2_2 > 7 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "^\\device\\")
      if L2_2 ~= nil then
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(MpCommon.PathToWin32Path(L1_1))
        L1_1 = L2_2
      end
    end
    L2_2 = versioning
    L2_2 = L2_2.GetOrgID
    L2_2 = L2_2()
    if L2_2 ~= nil and string.lower(L2_2) == "a30c11a9-ee43-4b6e-ab72-7be51053daba" then
      if string.find(L1_1, "^file://") ~= nil then
        L0_0 = true
      end
    elseif sysio.IsFileExists(L1_1) then
      L0_0 = true
    end
  end
end
if L0_0 == false then
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  L1_1 = L2_2
  if L1_1 ~= nil and L1_1 ~= "" then
    L2_2 = #L1_1
    if L2_2 > 10 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "^memscanvfz")
    else
      if L2_2 ~= nil then
        L2_2 = #L1_1
    end
    elseif L2_2 <= 10 then
      L2_2 = #L1_1
      if L2_2 > 7 then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L1_1, "^\\device\\")
        if L2_2 ~= nil then
          L2_2 = string
          L2_2 = L2_2.lower
          L2_2 = L2_2(MpCommon.PathToWin32Path(L1_1))
          L1_1 = L2_2
        end
      end
      L2_2 = sysio
      L2_2 = L2_2.IsFileExists
      L2_2 = L2_2(L1_1)
      if L2_2 then
        L0_0 = true
      end
    end
  end
end
if L0_0 then
  L2_2 = mp
  L2_2 = L2_2.IsPathExcludedForHipsRule
  L2_2 = L2_2(L1_1, "d3e037e1-3eb8-44c8-a917-57927947596d")
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
