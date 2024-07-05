local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "SLF:HackTool:"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "SLF:VirTool:"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "ALF:HackTool:"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattributesubstring
      L1_1 = "ALF:VirTool:"
      L0_0 = L0_0(L1_1)
    end
  end
elseif L0_0 then
  L0_0 = MpCommon
  L0_0 = L0_0.PathToWin32Path
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_FILEPATH)
  L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_FILEPATH))
  if L0_0 ~= nil then
    L1_1 = #L0_0
  elseif L1_1 < 9 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = {
    ":\\programdata$",
    ":\\perflogs$",
    ":\\users\\.*\\music$",
    ":windows\\temp$"
  }
  if contains(L0_0, L1_1, false) then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
