local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = "c:\\inetpub\\wwwroot\\aspnet_client\\system_web\\iisstart.aspx"
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = MpCommon
    L1_1 = L1_1.ExpandEnvironmentVariables
    L1_1 = L1_1("%ExchangeInstallPath%")
    if L1_1 == nil or L1_1 == "" or L1_1 == "%ExchangeInstallPath%" then
      return mp.CLEAN
    end
    L0_0 = L1_1 .. "FrontEnd\\HttpProxy\\ecp\\auth\\Logout.aspx"
  end
end
L1_1 = sysio
L1_1 = L1_1.IsFileExists
L1_1 = L1_1(L0_0)
if L1_1 then
  L1_1 = bm
  L1_1 = L1_1.add_related_file
  L1_1(L0_0)
  L1_1 = mp
  L1_1 = L1_1.TriggerScanResource
  L1_1("file", L0_0)
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
