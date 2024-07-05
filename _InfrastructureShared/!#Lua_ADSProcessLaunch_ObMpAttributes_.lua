local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if string.find(L0_0, ":", 1, true) ~= nil then
      if mp.get_mpattribute("BM_MZ_FILE") then
        mp.set_mpattribute("Lua:ADS_MZ_FILE")
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
