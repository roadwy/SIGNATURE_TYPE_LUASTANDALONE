local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\wsmprovhost.exe", 1, true) or string.find(L0_0, "\\wmiprvse.exe", 1, true) or string.find(L0_0, "\\sdiagnhost.exe", 1, true) or string.find(L0_0, "\\msiexec.exe", 1, true) or string.find(L0_0, "\\monitoringhost.exe", 1, true) or string.find(L0_0, "\\powershell", 1, true) or string.find(L0_0, "\\sawautovpn.exe", 1, true) or string.find(L0_0, "\\sqlps.exe", 1, true) or string.find(L0_0, "\\mws-syshealth.exe", 1, true) or string.find(L0_0, "\\legacyvstspowershellhost.exe", 1, true) or string.find(L0_0, "\\automationmanager.scriptrunner", 1, true) or string.find(L0_0, "\\msitwin8.dataprovider.exe", 1, true) or string.find(L0_0, "\\cloudtest", 1, true) or string.find(L0_0, "\\pdqinventoryscanner.exe", 1, true) or string.find(L0_0, "\\backupfavorites.exe", 1, true) or string.find(L0_0, "\\hypervattachvhd.exe", 1, true) or string.find(L0_0, "\\microsoft.office.datacenter.", 1, true) or string.find(L0_0, "\\microsoft.azure.", 1, true)) then
  return mp.CLEAN
end
return mp.INFECTED
