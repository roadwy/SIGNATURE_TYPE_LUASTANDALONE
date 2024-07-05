local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_SCANREASON)
if L1_1 == mp.SCANREASON_ONOPEN then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.GetMOTWHostUrl
    L1_1 = L1_1()
    if L1_1 ~= nil and string.len(L1_1) > 50 and L1_1:find("www.outputmessenger.com/OutputMessengerSetup_64bit.zip", 1, true) then
      return mp.INFECTED
    end
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
  if L1_1 == "outputmessengersetup_64bit.exe" then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
