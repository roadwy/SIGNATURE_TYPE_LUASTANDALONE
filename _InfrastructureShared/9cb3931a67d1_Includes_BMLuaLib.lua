local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    L1_1 = L1_1.lower
    L1_1 = L1_1(L1_1)
    L0_0 = L1_1
  end
end
L1_1 = {
  "execute remote test passed",
  "psscript_output_",
  "cloudamize_host_share",
  "instance-identity",
  "import-module hyper-v",
  "applicationhost.config",
  "iaa7acaacgbhaguadaatafcaaqbuaeua",
  "cgbjag4adgbvagsazqatafiazqbzahqatqblahqaaabvagq",
  "collectomsagentstatus",
  "temp\\nessus_",
  "audit_windows.vbs",
  "epascanner64.cab",
  "hidetableheaders",
  "usb insert.ps1",
  "execute remote test passed",
  "writedellwarranty",
  "conda.bat"
}
if contains(L0_0, L1_1) then
  return mp.CLEAN
end
if contains(L0_0, "cmd.*/c", false) and contains(L0_0, {
  " powershell"
}) then
  bm.add_related_string("WmiprvseRemoteProc", L0_0, bm.RelatedStringBMReport)
  reportSessionInformation()
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
