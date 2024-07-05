local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_PROCESSNAME)
if L2_2 == nil or L2_2 == "" then
  return mp.CLEAN
end
L2_2 = string.lower(L2_2)
mp.set_mpattribute("Lua:ImpacketAccessBy!" .. L2_2)
if L0_0:find("\\site-packages\\", 1, true) or L0_0:find("\\dist-packages\\", 1, true) then
  mp.set_mpattribute("Lua:ImpacketInSitePackages")
end
if L0_0:find("\\users\\.+\\downloads", 1, true) then
  mp.set_mpattribute("Lua:ImpacketInDownloads")
end
if ({
  ["addcomputer.py"] = true,
  ["atexec.py"] = true,
  ["changepasswd.py"] = true,
  ["dcomexec.py"] = true,
  ["dpapi.py"] = true,
  ["dumpntlminfo.py"] = true,
  ["esentutl.py"] = true,
  ["exchanger.py"] = true,
  ["finddelegation.py"] = true,
  ["get-gpppassword.py"] = true,
  ["getadusers.py"] = true,
  ["getarch.py"] = true,
  ["getnpusers.py"] = true,
  ["getpac.py"] = true,
  ["getst.py"] = true,
  ["gettgt.py"] = true,
  ["getuserspns.py"] = true,
  ["goldenpac.py"] = true,
  ["karmasmb.py"] = true,
  ["keylistattack.py"] = true,
  ["kintercept.py"] = true,
  ["ldap_shell.py"] = true,
  ["logger.py"] = true,
  ["lookupsid.py"] = true,
  ["machine_role.py"] = true,
  ["mimikatz.py"] = true,
  ["mqtt_check.py"] = true,
  ["mssqlclient.py"] = true,
  ["mssqlinstance.py"] = true,
  ["mssqlshell.py"] = true,
  ["net.py"] = true,
  ["netview.py"] = true,
  ["nmapanswermachine.py"] = true,
  ["ntfs-read.py"] = true,
  ["ntlmrelayx"] = true,
  ["ntlmrelayx.py"] = true,
  ["os_ident.py"] = true,
  ["ping.py"] = true,
  ["ping6.py"] = true,
  ["psexec.py"] = true,
  ["raisechild.py"] = true,
  ["rbcd.py"] = true,
  ["rdp_check.py"] = true,
  ["reg.py"] = true,
  ["registry-read.py"] = true,
  ["remcomsvc.py"] = true,
  ["rpcdatabase.py"] = true,
  ["rpcdump.py"] = true,
  ["rpcmap.py"] = true,
  ["sambapipe.py"] = true,
  ["samrdump.py"] = true,
  ["secretsdump.py"] = true,
  ["serviceinstall.py"] = true,
  ["services.py"] = true,
  ["smbclient.py"] = true,
  ["smbexec.py"] = true,
  ["smbpasswd.py"] = true,
  ["smbrelayx.py"] = true,
  ["smbserver.py"] = true,
  ["sniff.py"] = true,
  ["sniffer.py"] = true,
  ["split.py"] = true,
  ["ticketconverter.py"] = true,
  ["ticketer.py"] = true,
  ["tstool.py"] = true,
  ["wmiexec.py"] = true,
  ["wmipersist.py"] = true
})[L1_1] then
  mp.set_mpattribute("Lua:ImpacketExampleScript!" .. L1_1)
  return mp.INFECTED
end
mp.set_mpattribute("Lua:UsesImpacketUnknown")
return mp.CLEAN
