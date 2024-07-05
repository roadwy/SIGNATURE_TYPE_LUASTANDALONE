local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = false
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "Uri=([^;]+)"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = string
  L3_3 = L3_3.match
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, "DestIp=([^;]*);")
  if L3_3 then
    L4_4 = isPublicIP
    L4_4 = L4_4(L3_3)
  elseif not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L0_0 = true
end
L3_3 = {
  L4_4,
  "it-news.grundfos.com",
  "usatlnew04.na.ko.com",
  "ocsinventory-ng.yageo.local",
  "bcuinternet.cymru.nhs.uk",
  "amsterdam",
  "phx11-scodb-001.paypalcorp.com",
  "mbase.got.volvocars.net",
  "10.186.232.60",
  "10.204.210.139",
  "webdav2.kowa.co.jp",
  "scopeweb.spnet.local",
  "sewm0m001018.con-02.emea.dc.corpintra.net",
  "dataapi.appservice.ctc01.optum.com",
  "raw.githubusercontent.com",
  "health.1cloudhub.com",
  "dirresponder.bmwgroup.net",
  "10.99.211.109",
  "sw.symcb.com",
  "nausp-wapp0467.aceins.com",
  "codvwpwebits01",
  "srv1.sam360.com",
  "wmp.wmpad.local",
  "webservices01",
  "pdm.sas.local",
  "soewebservices.rtdomau.local",
  "symcb.com",
  "toyota.com",
  "optum.com",
  "francetelecom.fr",
  "copfs.gsi.gov.uk"
}
L4_4 = "helios.aas.its.nja.dk"
L4_4 = contains
L4_4 = L4_4(L2_2, L3_3)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4.SIG_CONTEXT = "SCRIPTDOWN"
L4_4.CONTENT_SOURCE = "BM"
L4_4.TAG = "INTERFLOW"
if not L0_0 and mp.CheckUrl(L2_2) == 1 and mp.CheckUrl(L2_2) == 1 then
  return mp.CLEAN
end
if SafeGetUrlReputation({L2_2}, L4_4, false, 2000).urls[L2_2] and SafeGetUrlReputation({L2_2}, L4_4, false, 2000).urls[L2_2].determination == 2 and SafeGetUrlReputation({L2_2}, L4_4, false, 2000).urls[L2_2].confidence >= 60 then
  return mp.INFECTED
end
return mp.CLEAN
