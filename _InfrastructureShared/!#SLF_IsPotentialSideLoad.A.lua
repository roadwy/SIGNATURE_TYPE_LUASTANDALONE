local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isappcontainer
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.resource_only_dll
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.no_ep
    if not L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.dmg_entrypoint
      if not L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.dmg_not_executable_image
        if not L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.dmg_truncated
        end
      end
    end
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
for L4_4, _FORV_5_ in L1_1(L2_2) do
  if _FORV_5_.Signers ~= nil then
    return mp.CLEAN
  end
end
if L1_1 then
  L4_4 = mp
  L4_4 = L4_4.get_filesize_by_handle
  L4_4 = L3_3(L4_4, L2_2)
  _ = L4_4
  if L1_1 then
    return L3_3
  end
end
L4_4 = mp
L4_4 = L4_4.getfilename
L4_4 = L4_4()
L4_4 = string
L4_4 = L4_4.sub
L4_4 = L4_4(L3_3, 1, 1)
if L4_4 ~= "c" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L3_3, "program files", 1, true)
if L4_4 == nil then
  L4_4 = string
  L4_4 = L4_4.find
  L4_4 = L4_4(L3_3, "c:\\windows\\system32\\", 1, true)
  if L4_4 == nil then
    L4_4 = string
    L4_4 = L4_4.find
    L4_4 = L4_4(L3_3, "c:\\windows\\syswow64\\", 1, true)
  end
elseif L4_4 ~= nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(mp.getfilename(mp.FILEPATH_QUERY_FNAME))
if L4_4 == nil or string.len(L4_4) > 16 then
  return mp.CLEAN
end
if mp.getfilesize() < 256 or mp.getfilesize() > 1048576 then
  return mp.CLEAN
end
if ({
  ["goopdate.dll"] = mp.INFECTED,
  ["mpsvc.dll"] = mp.INFECTED,
  ["mpclient.dll"] = mp.INFECTED,
  ["mpgear.dll"] = mp.INFECTED,
  ["iphlpapi.dll"] = mp.INFECTED,
  ["libcef.dll"] = mp.INFECTED,
  ["activeds.dll"] = mp.INFECTED,
  ["qclite.dll"] = mp.INFECTED,
  ["msimg32.dll"] = mp.INFECTED,
  ["aclmgr.dll"] = mp.INFECTED,
  ["rcdll.dll"] = mp.INFECTED,
  ["iscsiexe.dll"] = mp.INFECTED,
  ["iviewers.dll"] = mp.INFECTED,
  ["mscoree.dll"] = mp.INFECTED,
  ["version.dll"] = mp.INFECTED,
  ["cryptsp.dll"] = mp.INFECTED,
  ["msedgeupdate.dll"] = mp.INFECTED,
  ["midlrtmd.dll"] = mp.INFECTED,
  ["duser.dll"] = mp.INFECTED,
  ["dllsafecheck.dll"] = mp.INFECTED,
  ["userenv.dll"] = mp.INFECTED,
  ["k7sysmn1.dll"] = mp.INFECTED,
  ["cryptbase.dll"] = mp.INFECTED,
  ["ncrypt.dll"] = mp.INFECTED,
  ["edputil.dll"] = mp.INFECTED,
  ["dbgeng.dll"] = mp.INFECTED,
  ["faultrep.dll"] = mp.INFECTED,
  ["wsock32.dll"] = mp.INFECTED,
  ["wintthp.dll"] = mp.INFECTED,
  ["dismcore.dll"] = mp.INFECTED,
  ["hccutils.dll"] = mp.INFECTED,
  ["x32bridge.dll"] = mp.INFECTED,
  ["wdsync.dll"] = mp.INFECTED,
  ["wdlocal.dll"] = mp.INFECTED,
  ["cnqmutil.dll"] = mp.INFECTED,
  ["hd-common.dll"] = mp.INFECTED,
  ["imobiehelper.dll"] = mp.INFECTED,
  ["toolsbag.dll"] = mp.INFECTED,
  ["mvvm.dll"] = mp.INFECTED,
  ["textshaping.dll"] = mp.INFECTED,
  ["mcvsocfg.dll"] = mp.INFECTED,
  ["netapi32.dll"] = mp.INFECTED,
  ["dsrole.dll"] = mp.INFECTED,
  ["sspicli.dll"] = mp.INFECTED,
  ["msftedit.dll"] = mp.INFECTED,
  ["format.dll"] = mp.INFECTED,
  ["webview2loader.dll"] = mp.INFECTED,
  ["brmod104.dll"] = mp.INFECTED,
  ["facesdk.dll"] = mp.INFECTED,
  ["dokan1.dll"] = mp.INFECTED,
  ["vdfvm17.dll"] = mp.INFECTED,
  ["dvusb.dll"] = mp.INFECTED,
  ["drivespan.dll"] = mp.INFECTED,
  ["gswdll32.dll"] = mp.INFECTED,
  ["vivaldi_elf.dll"] = mp.INFECTED,
  ["protectwow64.dll"] = mp.INFECTED,
  ["ceiinfolog.dll"] = mp.INFECTED,
  ["waveedit.dll"] = mp.INFECTED,
  ["mpamedia.dll"] = mp.INFECTED,
  ["coreclr.dll"] = mp.INFECTED,
  ["scanimageui.dll"] = mp.INFECTED,
  ["hpcustpartui.dll"] = mp.INFECTED,
  ["vina-cav3.dll"] = mp.INFECTED,
  ["mozglue.dll"] = mp.INFECTED,
  ["ccl80u.dll"] = mp.INFECTED,
  ["corefoundation.dll"] = mp.INFECTED,
  ["wtsapi32.dll"] = mp.INFECTED,
  ["ualapi.dll"] = mp.INFECTED,
  ["propsys.dll"] = mp.INFECTED,
  ["winmde.dll"] = mp.INFECTED,
  ["colorui.dll"] = mp.INFECTED,
  ["dui70.dll"] = mp.INFECTED,
  ["mi.dll"] = mp.INFECTED,
  ["winhttp.dll"] = mp.INFECTED,
  ["esent.dll"] = mp.INFECTED,
  ["wbemcomm.dll"] = mp.INFECTED,
  ["sxshared.dll"] = mp.INFECTED,
  ["winsync.dll"] = mp.INFECTED,
  ["ncobjapi.dll"] = mp.INFECTED,
  ["wlbsctrl.dll"] = mp.INFECTED,
  ["wmiclnt.dll"] = mp.INFECTED,
  ["vcruntime140.dll"] = mp.INFECTED,
  ["sqlite3.dll"] = mp.LOWFI,
  ["ffmpeg.dll"] = mp.LOWFI,
  ["libvlc.dll"] = mp.LOWFI,
  ["jli.dll"] = mp.LOWFI
})[L4_4] == mp.INFECTED then
  return mp.INFECTED
elseif ({
  ["goopdate.dll"] = mp.INFECTED,
  ["mpsvc.dll"] = mp.INFECTED,
  ["mpclient.dll"] = mp.INFECTED,
  ["mpgear.dll"] = mp.INFECTED,
  ["iphlpapi.dll"] = mp.INFECTED,
  ["libcef.dll"] = mp.INFECTED,
  ["activeds.dll"] = mp.INFECTED,
  ["qclite.dll"] = mp.INFECTED,
  ["msimg32.dll"] = mp.INFECTED,
  ["aclmgr.dll"] = mp.INFECTED,
  ["rcdll.dll"] = mp.INFECTED,
  ["iscsiexe.dll"] = mp.INFECTED,
  ["iviewers.dll"] = mp.INFECTED,
  ["mscoree.dll"] = mp.INFECTED,
  ["version.dll"] = mp.INFECTED,
  ["cryptsp.dll"] = mp.INFECTED,
  ["msedgeupdate.dll"] = mp.INFECTED,
  ["midlrtmd.dll"] = mp.INFECTED,
  ["duser.dll"] = mp.INFECTED,
  ["dllsafecheck.dll"] = mp.INFECTED,
  ["userenv.dll"] = mp.INFECTED,
  ["k7sysmn1.dll"] = mp.INFECTED,
  ["cryptbase.dll"] = mp.INFECTED,
  ["ncrypt.dll"] = mp.INFECTED,
  ["edputil.dll"] = mp.INFECTED,
  ["dbgeng.dll"] = mp.INFECTED,
  ["faultrep.dll"] = mp.INFECTED,
  ["wsock32.dll"] = mp.INFECTED,
  ["wintthp.dll"] = mp.INFECTED,
  ["dismcore.dll"] = mp.INFECTED,
  ["hccutils.dll"] = mp.INFECTED,
  ["x32bridge.dll"] = mp.INFECTED,
  ["wdsync.dll"] = mp.INFECTED,
  ["wdlocal.dll"] = mp.INFECTED,
  ["cnqmutil.dll"] = mp.INFECTED,
  ["hd-common.dll"] = mp.INFECTED,
  ["imobiehelper.dll"] = mp.INFECTED,
  ["toolsbag.dll"] = mp.INFECTED,
  ["mvvm.dll"] = mp.INFECTED,
  ["textshaping.dll"] = mp.INFECTED,
  ["mcvsocfg.dll"] = mp.INFECTED,
  ["netapi32.dll"] = mp.INFECTED,
  ["dsrole.dll"] = mp.INFECTED,
  ["sspicli.dll"] = mp.INFECTED,
  ["msftedit.dll"] = mp.INFECTED,
  ["format.dll"] = mp.INFECTED,
  ["webview2loader.dll"] = mp.INFECTED,
  ["brmod104.dll"] = mp.INFECTED,
  ["facesdk.dll"] = mp.INFECTED,
  ["dokan1.dll"] = mp.INFECTED,
  ["vdfvm17.dll"] = mp.INFECTED,
  ["dvusb.dll"] = mp.INFECTED,
  ["drivespan.dll"] = mp.INFECTED,
  ["gswdll32.dll"] = mp.INFECTED,
  ["vivaldi_elf.dll"] = mp.INFECTED,
  ["protectwow64.dll"] = mp.INFECTED,
  ["ceiinfolog.dll"] = mp.INFECTED,
  ["waveedit.dll"] = mp.INFECTED,
  ["mpamedia.dll"] = mp.INFECTED,
  ["coreclr.dll"] = mp.INFECTED,
  ["scanimageui.dll"] = mp.INFECTED,
  ["hpcustpartui.dll"] = mp.INFECTED,
  ["vina-cav3.dll"] = mp.INFECTED,
  ["mozglue.dll"] = mp.INFECTED,
  ["ccl80u.dll"] = mp.INFECTED,
  ["corefoundation.dll"] = mp.INFECTED,
  ["wtsapi32.dll"] = mp.INFECTED,
  ["ualapi.dll"] = mp.INFECTED,
  ["propsys.dll"] = mp.INFECTED,
  ["winmde.dll"] = mp.INFECTED,
  ["colorui.dll"] = mp.INFECTED,
  ["dui70.dll"] = mp.INFECTED,
  ["mi.dll"] = mp.INFECTED,
  ["winhttp.dll"] = mp.INFECTED,
  ["esent.dll"] = mp.INFECTED,
  ["wbemcomm.dll"] = mp.INFECTED,
  ["sxshared.dll"] = mp.INFECTED,
  ["winsync.dll"] = mp.INFECTED,
  ["ncobjapi.dll"] = mp.INFECTED,
  ["wlbsctrl.dll"] = mp.INFECTED,
  ["wmiclnt.dll"] = mp.INFECTED,
  ["vcruntime140.dll"] = mp.INFECTED,
  ["sqlite3.dll"] = mp.LOWFI,
  ["ffmpeg.dll"] = mp.LOWFI,
  ["libvlc.dll"] = mp.LOWFI,
  ["jli.dll"] = mp.LOWFI
})[L4_4] == mp.LOWFI then
  return mp.LOWFI
end
return mp.CLEAN
