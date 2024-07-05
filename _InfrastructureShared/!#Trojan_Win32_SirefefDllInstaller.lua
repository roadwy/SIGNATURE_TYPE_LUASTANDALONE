local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_FILEPATH)
  if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) == "msimg32.dll" and string.lower(string.sub(L0_0, -5, -1)) == "\\temp" and pe.get_versioninfo().CompanyName ~= "Microsoft Corporation" then
    return mp.LOWFI
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
