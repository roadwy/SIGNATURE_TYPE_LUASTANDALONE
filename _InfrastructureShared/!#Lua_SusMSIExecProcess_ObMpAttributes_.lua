local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
    L0_0 = L0_0(L1_1)
    L0_0 = L0_0 or ""
    L1_1 = "Lua:MSIParent_"
    if L0_0 == "" then
      L1_1 = L1_1 .. "Unknown"
    elseif ({
      ["nxtsvc.exe"] = true,
      ["receiver.exe"] = true,
      ["ndtrack.exe"] = true,
      ["adobearm.exe"] = true,
      ["applicationcollection.exe"] = true,
      ["dellsupportassistremedationservice.exe"] = true,
      ["monitoringhost.exe"] = true
    })[L0_0:lower()] ~= true then
      L1_1 = L1_1 .. "NonMonitored"
    end
    mp.set_mpattribute(L1_1)
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
