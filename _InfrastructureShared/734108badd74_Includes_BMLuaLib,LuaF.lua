local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = nri
L1_1 = L1_1.GetURI
L5_5 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p1
    L3_3 = L3_3(L4_4)
    L1_1 = L3_3
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.utf8p1
    if L3_3 ~= nil then
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L4_4 = L4_4.utf8p1
      L3_3 = L3_3(L4_4)
      L1_1 = L3_3
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L4_4 = L4_4.utf8p2
      L3_3 = L3_3(L4_4)
      L2_2 = L3_3
    end
  end
end
L3_3 = {
  L4_4,
  L5_5,
  "gateways.workmeter.com",
  "opendns.com",
  "banyunjuhe.com",
  "funshion.com",
  "client-log.box.com",
  "apps.h1.se",
  "microsoftonline.com",
  "login.live.com",
  ".visualstudio.com",
  "oceanbites123.com",
  "vivo.com.cn",
  "epicgames.dev",
  ".infineon.com",
  ".kuaishou.com",
  ".qualcomm.com",
  "cyberhaven.io",
  "xcelenergy.com",
  "trihealth.com",
  "paypalcorp.com",
  "vyaire.com",
  "atera.com",
  "rds.penc.local",
  "mixpanel.com",
  "jumpcloud.com",
  "datadoghq.com",
  "cymru.nhs.uk",
  "remoteapp.sihm.fr",
  "morphisec.cloud",
  "smartbear.com"
}
L4_4 = ".microsoft.com"
L5_5 = "www.teramind.co"
L4_4 = contains
L5_5 = L0_0
L4_4 = L4_4(L5_5, L3_3)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {
  L5_5,
  "cscript.exe",
  "powershell.exe",
  "mshat.exe",
  "pwsh.exe",
  "java.exe",
  "msiexec.exe",
  "wabmig.exe",
  "winword.exe",
  "excel.exe",
  "powerpnt.exe",
  "cmd.exe",
  "wmiprvse.exe",
  "vbc.exe",
  "msbuild.exe",
  "wmic.exe",
  "cmstp.exe",
  "regasm.exe",
  "installutil.exe",
  "regsvcs.exe",
  "msxsl.exe",
  "csc.exe"
}
L5_5 = "wscript.exe"
L5_5 = IsProcNameInParentProcessTree
L5_5 = L5_5(L2_2, L4_4)
if not L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L5_5.SIG_CONTEXT = "DLL_LOAD"
L5_5.CONTENT_SOURCE = "BM"
L5_5.PROCESS_CONTEXT = L1_1
L5_5.FILELESS = "true"
L5_5.CMDLINE_URL = "false"
L5_5.TAG = "INTERFLOW"
if mp.CheckUrl(L0_0) == 1 and mp.CheckUrl(L0_0) == 1 then
  return mp.CLEAN
end
if SafeGetUrlReputation({L0_0}, L5_5, false, 2000).urls[L0_0] and SafeGetUrlReputation({L0_0}, L5_5, false, 2000).urls[L0_0].determination == 2 and SafeGetUrlReputation({L0_0}, L5_5, false, 2000).urls[L0_0].confidence >= 60 then
  return mp.INFECTED
end
return mp.CLEAN
