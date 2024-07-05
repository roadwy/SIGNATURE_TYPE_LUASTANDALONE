local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L3_3 = L0_0
  L2_2 = L0_0.lower
  L2_2 = L2_2(L3_3)
  L3_3 = "\\start menu\\programs\\startup\\"
  L1_1 = L1_1(L2_2, L3_3, 1, true)
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 ~= nil then
  L3_3 = L1_1
  L2_2 = L1_1.lower
  L2_2 = L2_2(L3_3)
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L2_2, "^flx%x%x%x%x?%.lnk$")
  if L3_3 == nil then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, "^flx%x%x%x%x?%.tmp$")
    if L3_3 == nil then
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L2_2, "^@?%x%x%x%x%x%x%x%x%x%x%x%x%.lnk$")
    end
  elseif L3_3 ~= nil or L2_2 == "zlighthouseregisterieplugin.lnk" or L2_2 == "microsoft-teamsaddin.lnk" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L2_2 = mp
L2_2 = L2_2.GetLnkInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.BasePath
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2.BasePath:lower(), "\\regsvr32.exe", 1, true)
    if L3_3 ~= nil then
      L3_3 = L2_2.Arguments
      if L3_3 ~= nil then
        L3_3 = L2_2.Arguments
        L3_3 = L3_3.lower
        L3_3 = L3_3(L3_3)
        if string.find(L3_3, ".cpp", 1, true) == nil and string.find(L3_3, ".ocx", 1, true) == nil and string.find(L3_3, "redemption.dll", 1, true) == nil then
          return mp.INFECTED
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
