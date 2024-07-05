local L0_0, L1_1
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L1_1 = "%ExchangeInstallPath%"
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" or L0_0 == "%ExchangeInstallPath%" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.IsFileExists
L1_1 = L1_1(L0_0 .. "bin\\Microsoft.Exchange.Store.Service.exe")
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
if this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].utf8p2
end
if L1_1 ~= nil then
  bm.trigger_sig(L1_1, "ProcessBlockExchg")
end
return mp.INFECTED
