local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "%.downloadstring%(%'?\"?https?%://(%d+%.%d+%.%d+%.%d+)"
L3_3 = L1_1(L2_2, L3_3)
if L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = isIEXfound
L5_5 = L0_0
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L5_5 = L0_0
L4_4 = L0_0.match
L6_6 = "%.downloadstring%('([^']+)'%)"
L4_4 = L4_4(L5_5, L6_6)
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {
  L6_6,
  L7_7,
  L8_8,
  "rs.marcopacs.com",
  "rcdsei-rp.djicorp.com",
  "hardware-cdn.rippling.com",
  "raw.githubusercontent.com",
  "bit.ly",
  "aiga.totvscloud.com.br",
  "file.provaltech.com",
  "lt.elevate.net",
  "chocolatey.org",
  "automate.techpath.com.au",
  "lt.flexsupport.net",
  "alldevices.blob.core.windows.net",
  "web.hypervision.xefi.fr",
  "cdn.sierrapacificgroup.com",
  "digacore.hostedrmm.com",
  "status.jh.edu",
  "msjoin.com",
  "pwsh.irs.it.ufl.edu",
  "dd.glancesoftware.com",
  "aigaion.totvscloud.com.br",
  "edgedxfiles4mcdean.blob.core.windows.net",
  "lt10.gmal.co.uk",
  "rmm.myitcrewny.com",
  "bitbucket.org",
  "neptune.group-dis.com",
  "beta.famesystems.de"
}
L6_6 = "m.lll.org.ua"
L7_7 = "filestore.caltech.com"
L8_8 = "bremmar.com.au"
L6_6 = contains
L7_7 = L4_4
L8_8 = L5_5
L6_6 = L6_6(L7_7, L8_8)
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.CheckUrl
L7_7 = L4_4
L7_7 = L6_6(L7_7)
if L6_6 == 1 and L7_7 == 1 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = {}
L8_8.SIG_CONTEXT = "PSHELL_URI"
L8_8.CONTENT_SOURCE = "POWERSHELL"
L8_8.PROCESS_CONTEXT = "POWERSHELL.EXE"
L8_8.FILELESS = "true"
L8_8.CMDLINE_URL = "true"
L8_8.TAG = "INTERFLOW"
if SafeGetUrlReputation({L4_4}, L8_8, false, 2000).urls[L4_4] and SafeGetUrlReputation({L4_4}, L8_8, false, 2000).urls[L4_4].determination == 2 and SafeGetUrlReputation({L4_4}, L8_8, false, 2000).urls[L4_4].confidence >= 60 then
  return mp.INFECTED
end
return mp.CLEAN
