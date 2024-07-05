local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_HAS_MOTW_ADS)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.GetMOTWHostUrl
  L0_0 = L0_0()
  if L0_0 ~= nil then
    L0_0 = L0_0:lower()
    if string.find(L0_0, "outlook", 1, true) or string.find(L0_0, "mail", 1, true) or string.find(L0_0, "attach", 1, true) or string.find(L0_0, "message", 1, true) then
      MpCommon.AppendPersistContextNoPath("CLF_AM", "CLF_AM_WM", 60)
      MpCommon.AppendPersistContextNoPath("CLF_IC", mp.getfilename(), 60)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
