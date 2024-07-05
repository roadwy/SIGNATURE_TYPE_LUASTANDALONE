local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.GetMOTWHostUrl
    L0_0 = L0_0()
    if L0_0 ~= nil and string.len(L0_0) > 35 and (L0_0:find("cloud2cloud.co/", 1, true) or L0_0:find("cloud-share.net", 1, true) or L0_0:find("uips3.com/", 1, true)) then
      mp.set_mpattribute("//Lua:PSPegToolDownload")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
