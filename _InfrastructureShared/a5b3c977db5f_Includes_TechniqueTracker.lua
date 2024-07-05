local L0_0
if this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
end
if L0_0 ~= nil and (string.find(L0_0, "https://dev.azure.com", 1, true) or string.find(L0_0, "https://portalpre.inmocaixa.com", 1, true) or string.find(L0_0, "https://www.nfbio.dk", 1, true) or string.find(L0_0, "https://lsp.accenture.com", 1, true)) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1505.003", "Persistence_Webshell")
return mp.INFECTED
