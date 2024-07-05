local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.CompanyName
if L1_1 ~= nil then
  for L5_5 = 32, 47 do
    L6_6 = string
    L6_6 = L6_6.format
    L7_7 = "%c%c%c"
    L8_8 = L5_5
    L9_9 = L5_5
    L10_10 = L5_5
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    L7_7 = string
    L7_7 = L7_7.find
    L8_8 = L1_1
    L9_9 = L6_6
    L10_10 = 1
    L11_11 = true
    L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
    if L7_7 ~= nil then
      L7_7 = mp
      L7_7 = L7_7.set_mpattribute
      L8_8 = "LUA:PEAnomaly_SpecialCompanyName"
      L7_7(L8_8)
      break
    end
  end
  if L2_2 ~= nil then
    L5_5 = L1_1
    L6_6 = 1
    L7_7 = true
    if L3_3 == nil then
      L3_3(L4_4)
    end
  end
end
if L2_2 ~= nil then
  L5_5 = "[0-9]"
  L6_6 = 1
  if L3_3 ~= nil then
    L5_5 = "."
    L6_6 = 1
    L7_7 = true
  elseif L3_3 == nil then
    L3_3(L4_4)
  end
  L5_5 = L2_2
  L3_3(L4_4)
end
L5_5 = mp
L5_5 = L5_5.bitor
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_FNAME
L7_7 = mp
L7_7 = L7_7.FILEPATH_QUERY_PATH
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L20_20 = L4_4(L5_5, L6_6)
if L4_4 == nil or L3_3 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L5_5["accesschk.exe"] = true
L5_5["accesschk64.exe"] = true
L5_5["accessenum.exe"] = true
L5_5["acrord32.exe"] = true
L5_5["adexplorer.exe"] = true
L5_5["adinsight.exe"] = true
L5_5["adrestore.exe"] = true
L5_5["applicationframehost.exe"] = true
L5_5["appvclient.exe"] = true
L5_5["appvlp.exe"] = true
L5_5["atbroker.exe"] = true
L5_5["audiodg.exe"] = true
L5_5["autoruns.exe"] = true
L5_5["autoruns64.exe"] = true
L5_5["autorunsc.exe"] = true
L5_5["autorunsc64.exe"] = true
L5_5["bash.exe"] = true
L5_5["bginfo.exe"] = true
L5_5["bginfo64.exe"] = true
L5_5["bitsadmin.exe"] = true
L5_5["browser_broker.exe"] = true
L5_5["calc.exe"] = true
L5_5["cdb.exe"] = true
L5_5["certutil.exe"] = true
L5_5["clockres.exe"] = true
L5_5["clockres64.exe"] = true
L5_5["cmd.exe"] = true
L5_5["cmdkey.exe"] = true
L5_5["cmstp.exe"] = true
L5_5["conhost.exe"] = true
L5_5["consent.exe"] = true
L5_5["contig.exe"] = true
L5_5["contig64.exe"] = true
L5_5["control.exe"] = true
L5_5["coreinfo.exe"] = true
L5_5["csc.exe"] = true
L5_5["cscript.exe"] = true
L5_5["csi.exe"] = true
L5_5["csrss.exe"] = true
L5_5["ctfmon.exe"] = true
L5_5["ctrl2cap.exe"] = true
L5_5["dashost.exe"] = true
L5_5["dataexchangehost.exe"] = true
L5_5["dbgview.exe"] = true
L5_5["dfsvc.exe"] = true
L5_5["disk2vhd.exe"] = true
L5_5["diskext.exe"] = true
L5_5["diskext64.exe"] = true
L5_5["diskshadow.exe"] = true
L5_5["dllhost.exe"] = true
L5_5["dnscmd.exe"] = true
L5_5["dnx.exe"] = true
L5_5["dxcap.exe"] = true
L5_5["esentutl.exe"] = true
L5_5["expand.exe"] = true
L5_5["explorer.exe"] = true
L5_5["extexport.exe"] = true
L5_5["extrac32.exe"] = true
L5_5["findlinks.exe"] = true
L5_5["findlinks64.exe"] = true
L5_5["findstr.exe"] = true
L5_5["fontdrvhost.exe"] = true
L5_5["forfiles.exe"] = true
L5_5["fxssvc.exe"] = true
L5_5["gpscript.exe"] = true
L5_5["gpup.exe"] = true
L5_5["handle.exe"] = true
L5_5["handle64.exe"] = true
L5_5["hex2dec.exe"] = true
L5_5["hex2dec64.exe"] = true
L5_5["hh.exe"] = true
L5_5["ie4uinit.exe"] = true
L5_5["ieexec.exe"] = true
L5_5["infdefaultinstall.exe"] = true
L5_5["installutil.exe"] = true
L5_5["junction.exe"] = true
L5_5["junction64.exe"] = true
L5_5["ldmdump.exe"] = true
L5_5["livekd.exe"] = true
L5_5["livekd64.exe"] = true
L5_5["loadord.exe"] = true
L5_5["loadord64.exe"] = true
L5_5["loadordc.exe"] = true
L5_5["loadordc64.exe"] = true
L5_5["lockapp.exe"] = true
L5_5["logonsessions.exe"] = true
L5_5["logonsessions64.exe"] = true
L5_5["lsaiso.exe"] = true
L5_5["lsass.exe"] = true
L5_5["makecab.exe"] = true
L5_5["mavinject.exe"] = true
L5_5["mftrace.exe"] = true
L5_5["microsoftedge.exe"] = true
L5_5["microsoftedgecp.exe"] = true
L5_5["microsoftedgesh.exe"] = true
L5_5["msbuild.exe"] = true
L5_5["msconfig.exe"] = true
L5_5["msdeploy.exe"] = true
L5_5["msdt.exe"] = true
L5_5["msdtc.exe"] = true
L5_5["mshta.exe"] = true
L5_5["msiexec.exe"] = true
L5_5["msxsl.exe"] = true
L5_5["netsh.exe"] = true
L5_5["nlnotes.exe"] = true
L5_5["nltest.exe"] = true
L5_5["notes.exe"] = true
L5_5["notmyfault.exe"] = true
L5_5["notmyfault64.exe"] = true
L5_5["notmyfaultc.exe"] = true
L5_5["notmyfaultc64.exe"] = true
L5_5["ntfsinfo.exe"] = true
L5_5["ntfsinfo64.exe"] = true
L5_5["ntoskrnl.exe"] = true
L5_5["nvudisp.exe"] = true
L5_5["nvuhda6.exe"] = true
L5_5["odbcconf.exe"] = true
L5_5["openwith.exe"] = true
L5_5["pagedfrg.exe"] = true
L5_5["pcalua.exe"] = true
L5_5["pcwrun.exe"] = true
L5_5["pendmoves.exe"] = true
L5_5["pendmoves64.exe"] = true
L5_5["pipelist.exe"] = true
L5_5["pipelist64.exe"] = true
L5_5["powershell.exe"] = true
L5_5["presentationhost.exe"] = true
L5_5["print.exe"] = true
L5_5["procdump.exe"] = true
L5_5["procdump64.exe"] = true
L5_5["procexp.exe"] = true
L5_5["procexp64.exe"] = true
L5_5["procmon.exe"] = true
L5_5["psexec.exe"] = true
L5_5["psexec64.exe"] = true
L5_5["psfile.exe"] = true
L5_5["psfile64.exe"] = true
L5_5["psgetsid.exe"] = true
L5_5["psgetsid64.exe"] = true
L5_5["psinfo.exe"] = true
L5_5["psinfo64.exe"] = true
L5_5["pskill.exe"] = true
L5_5["pskill64.exe"] = true
L5_5["pslist.exe"] = true
L5_5["pslist64.exe"] = true
L5_5["psloggedon.exe"] = true
L5_5["psloggedon64.exe"] = true
L5_5["psloglist.exe"] = true
L5_5["psloglist64.exe"] = true
L5_5["pspasswd.exe"] = true
L5_5["pspasswd64.exe"] = true
L5_5["psping.exe"] = true
L5_5["psping64.exe"] = true
L5_5["psr.exe"] = true
L5_5["psservice.exe"] = true
L5_5["psservice64.exe"] = true
L5_5["psshutdown.exe"] = true
L5_5["pssuspend.exe"] = true
L5_5["pssuspend64.exe"] = true
L5_5["pwsh.exe"] = true
L5_5["rammap.exe"] = true
L5_5["rcsi.exe"] = true
L5_5["reg.exe"] = true
L5_5["regasm.exe"] = true
L5_5["regdelnull.exe"] = true
L5_5["regdelnull64.exe"] = true
L5_5["regedit.exe"] = true
L5_5["register-cimprovider"] = true
L5_5["regjump.exe"] = true
L5_5["regsvcs.exe"] = true
L5_5["regsvr32.exe"] = true
L5_5["replace.exe"] = true
L5_5["robocopy.exe"] = true
L5_5["roccat_swarm.exe"] = true
L5_5["rpcping.exe"] = true
L5_5["rundll32.exe"] = true
L5_5["runonce.exe"] = true
L5_5["runscripthelper.exe"] = true
L5_5["runtimebroker.exe"] = true
L5_5["sc.exe"] = true
L5_5["scriptrunner.exe"] = true
L5_5["sdelete.exe"] = true
L5_5["sdelete64.exe"] = true
L5_5["sdiagnhost.exe"] = true
L5_5["searchfilterhost.exe"] = true
L5_5["searchindexer.exe"] = true
L5_5["searchprotocolhost.exe"] = true
L5_5["securityhealthservice.exe"] = true
L5_5["services.exe"] = true
L5_5["settingsynchost.exe"] = true
L5_5["sgrmbroker.exe"] = true
L5_5["sigcheck.exe"] = true
L5_5["sigcheck64.exe"] = true
L5_5["sihost.exe"] = true
L5_5["smartscreen.exe"] = true
L5_5["smss.exe"] = true
L5_5["splwow64.exe"] = true
L5_5["spoolsv.exe"] = true
L5_5["sppsvc.exe"] = true
L5_5["sqldumper.exe"] = true
L5_5["sqlps.exe"] = true
L5_5["sqltoolsps.exe"] = true
L5_5["streams.exe"] = true
L5_5["streams64.exe"] = true
L5_5["surfacecolorservice.exe"] = true
L5_5["surfaceservice.exe"] = true
L5_5["svchost.exe"] = true
L5_5["syncappvpublishingserver.exe"] = true
L5_5["synchost.exe"] = true
L5_5["sysmon.exe"] = true
L5_5["sysmon64.exe"] = true
L5_5["systemsettingsbroker.exe"] = true
L5_5["taskhostw.exe"] = true
L5_5["taskmgr.exe"] = true
L5_5["tcpvcon.exe"] = true
L5_5["tcpview.exe"] = true
L5_5["te.exe"] = true
L5_5["tracker.exe"] = true
L5_5["usbinst.exe"] = true
L5_5["vboxdrvinst.exe"] = true
L5_5["vmcompute.exe"] = true
L5_5["vmmap.exe"] = true
L5_5["vmms.exe"] = true
L5_5["vsjitdebugger.exe"] = true
L5_5["vssvc.exe"] = true
L5_5["wab.exe"] = true
L6_6 = true
L5_5["werfault.exe"] = L6_6
L6_6 = "werfaultsecure.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wininit.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "winlogon.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "winobj.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "winword.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wmiapsrv.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wmic.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wmiprvse.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wscript.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wsmprovhost.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wuauclt.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "wudfhost.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = "xwizard.exe"
L7_7 = true
L5_5[L6_6] = L7_7
L6_6 = {}
L7_7 = "activeds.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "amsi.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "credui.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "dbgeng.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "dbghelp.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "diagtrack.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "dpx.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "dui70.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "duser.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "dwmapi.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "dxgi.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "emet.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "fvewiz.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "hid.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "kernel32.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "mfc42u.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "oleacc.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "secur32.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "slc.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "spp.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "tapi32.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "user32.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "uxtheme.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "wer.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "winbio.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "winbrand.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "windowscoredeviceinfo.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "winmm.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "winsta.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "wldp.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "wtsapi32.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "xmllite.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = "unidrv.dll"
L8_8 = true
L6_6[L7_7] = L8_8
L7_7 = false
L8_8 = false
L9_9 = false
L10_10 = false
L11_11 = false
L12_12 = false
L13_13 = false
L16_16 = "gsub"
L15_15 = L4_4
L14_14 = L4_4[L16_16]
L16_16 = "%.exe%.mui"
L17_17 = ".exe"
L14_14 = L14_14(L15_15, L16_16, L17_17)
L15_15 = L3_3
L14_14 = L3_3.find
L16_16 = "\\windows\\winsxs\\"
L17_17 = 1
L18_18 = true
L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
if not L14_14 then
  L15_15 = L3_3
  L14_14 = L3_3.find
  L16_16 = "\\\\$windows.~bt\\\\"
  L17_17 = 1
  L18_18 = true
  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
  if not L14_14 then
    L15_15 = L3_3
    L14_14 = L3_3.find
    L16_16 = "\\windows\\softwaredistribution\\"
    L17_17 = 1
    L18_18 = true
    L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
    if not L14_14 then
      L15_15 = L3_3
      L14_14 = L3_3.find
      L16_16 = "\\windows.old\\"
      L17_17 = 1
      L18_18 = true
      L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
      if not L14_14 then
        L15_15 = L3_3
        L14_14 = L3_3.find
        L16_16 = "\\\\winsehotfix\\hotfixes\\"
        L17_17 = 1
        L18_18 = true
        L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
        if not L14_14 then
          L15_15 = L3_3
          L14_14 = L3_3.find
          L16_16 = "\\harddiskvolume.?.?.?\\windows"
          L14_14 = L14_14(L15_15, L16_16)
          if not L14_14 then
            L15_15 = L3_3
            L14_14 = L3_3.find
            L16_16 = "\\windows\\assembly\\nativeimages"
            L17_17 = 1
            L18_18 = true
            L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
            if not L14_14 then
              L15_15 = L3_3
              L14_14 = L3_3.find
              L16_16 = "windows\\ccm"
              L17_17 = 1
              L18_18 = true
              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
            end
          end
        end
      end
    end
  end
elseif L14_14 then
  L14_14 = mp
  L14_14 = L14_14.set_mpattribute
  L15_15 = "Lua:PeInExcludedOsPath"
  L14_14(L15_15)
  L8_8 = true
end
L15_15 = L3_3
L14_14 = L3_3.find
L16_16 = ":\\windows\\system32"
L17_17 = 1
L18_18 = true
L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
if not L14_14 then
  L15_15 = L3_3
  L14_14 = L3_3.find
  L16_16 = ":\\windows\\syswow64"
  L17_17 = 1
  L18_18 = true
  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
elseif L14_14 then
  L14_14 = mp
  L14_14 = L14_14.set_mpattribute
  L15_15 = "Lua:PeInSystemFolder"
  L14_14(L15_15)
  L9_9 = true
  L15_15 = L3_3
  L14_14 = L3_3.find
  L16_16 = "\\spool"
  L17_17 = 1
  L18_18 = true
  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
  if L14_14 then
    L9_9 = false
    L13_13 = true
    L14_14 = mp
    L14_14 = L14_14.set_mpattribute
    L15_15 = "Lua:PeInSpoolFolder"
    L14_14(L15_15)
  end
end
L15_15 = L3_3
L14_14 = L3_3.find
L16_16 = "c:\\program files\\"
L17_17 = 1
L18_18 = true
L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
if not L14_14 then
  L15_15 = L3_3
  L14_14 = L3_3.find
  L16_16 = "c:\\program files (x86)\\"
  L17_17 = 1
  L18_18 = true
  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
elseif L14_14 then
  L14_14 = mp
  L14_14 = L14_14.set_mpattribute
  L15_15 = "Lua:PeInProgramsFolder"
  L14_14(L15_15)
  L10_10 = true
end
L14_14 = StringSplit
L15_15 = L4_4
L16_16 = "."
L14_14 = L14_14(L15_15, L16_16)
L15_15 = #L14_14
L15_15 = L14_14[L15_15]
L16_16 = #L14_14
L17_17 = 1
if L16_16 == L17_17 then
  L16_16 = mp
  L16_16 = L16_16.set_mpattribute
  L17_17 = "Lua:PeFileExtension!nil"
  L16_16(L17_17)
else
  L16_16 = nil
  if L15_15 ~= L16_16 then
    L16_16 = #L15_15
    L17_17 = 5
    if L16_16 > L17_17 then
      L18_18 = "sub"
      L17_17 = L15_15
      L16_16 = L15_15[L18_18]
      L18_18 = -5
      L16_16 = L16_16(L17_17, L18_18)
      L15_15 = L16_16 or L15_15
    end
    L16_16 = mp
    L16_16 = L16_16.set_mpattribute
    L17_17 = "Lua:PeFileExtension!"
    L18_18 = L15_15
    L17_17 = L17_17 .. L18_18
    L16_16(L17_17)
  end
end
L16_16 = mp
L16_16 = L16_16.set_mpattribute
L17_17 = "Lua:PeFSFileName!"
L18_18 = L4_4
L17_17 = L17_17 .. L18_18
L16_16(L17_17)
L16_16 = "InternalName"
L16_16 = L0_0[L16_16]
if L16_16 then
  L17_17 = string
  L18_18 = "lower"
  L17_17 = L17_17[L18_18]
  L18_18 = L16_16
  L17_17 = L17_17(L18_18)
  L16_16 = L17_17
  L19_19 = "gsub"
  L18_18 = L16_16
  L17_17 = L16_16[L19_19]
  L19_19 = "%.exe%.mui"
  L20_20 = ".exe"
  L17_17 = L17_17(L18_18, L19_19, L20_20)
  L16_16 = L17_17
  L17_17 = mp
  L17_17 = L17_17.set_mpattribute
  L18_18 = "Lua:PeInternalName!"
  L19_19 = L16_16
  L18_18 = L18_18 .. L19_19
  L17_17(L18_18)
  if L16_16 ~= L4_4 then
    L17_17 = mp
    L17_17 = L17_17.set_mpattribute
    L18_18 = "Lua:PeInternalNameDiffFromFileName"
    L17_17(L18_18)
  else
    L17_17 = mp
    L17_17 = L17_17.set_mpattribute
    L18_18 = "Lua:PeInternalNameMatchedFileName"
    L17_17(L18_18)
  end
else
  L17_17 = mp
  L17_17 = L17_17.set_mpattribute
  L18_18 = "Lua:PeInternalName!nil"
  L17_17(L18_18)
end
L17_17 = "OriginalFilename"
L17_17 = L0_0[L17_17]
if L17_17 then
  L18_18 = string
  L19_19 = "lower"
  L18_18 = L18_18[L19_19]
  L19_19 = L17_17
  L18_18 = L18_18(L19_19)
  L17_17 = L18_18
  L20_20 = "gsub"
  L19_19 = L17_17
  L18_18 = L17_17[L20_20]
  L20_20 = "%.exe%.mui"
  L18_18 = L18_18(L19_19, L20_20, ".exe")
  L17_17 = L18_18
  L18_18 = mp
  L18_18 = L18_18.set_mpattribute
  L19_19 = "Lua:PeOriginalName!"
  L20_20 = L17_17
  L19_19 = L19_19 .. L20_20
  L18_18(L19_19)
  if L17_17 ~= L4_4 then
    L18_18 = mp
    L18_18 = L18_18.set_mpattribute
    L19_19 = "Lua:PeOriginalNameDiffFromFileName"
    L18_18(L19_19)
    L7_7 = true
  else
    L18_18 = mp
    L18_18 = L18_18.set_mpattribute
    L19_19 = "Lua:PeOriginalNameMatchedFileName"
    L18_18(L19_19)
  end
else
  L17_17 = "nil"
  L18_18 = mp
  L18_18 = L18_18.set_mpattribute
  L19_19 = "Lua:PeOriginalName!nil"
  L18_18(L19_19)
end
L18_18 = false
L19_19 = "exe"
if L15_15 == L19_19 then
  L19_19 = L5_5[L17_17]
  if not L19_19 then
    L19_19 = L5_5[L4_4]
  elseif L19_19 then
    L18_18 = true
  end
end
L19_19 = "dll"
if L15_15 == L19_19 then
  L19_19 = L6_6[L17_17]
  if not L19_19 then
    L19_19 = L6_6[L4_4]
  elseif L19_19 then
    L18_18 = true
  end
end
if L13_13 or L18_18 and not L8_8 then
  L19_19 = mp
  L20_20 = "IsTrustedFile"
  L19_19 = L19_19[L20_20]
  L19_19 = L19_19()
  if L19_19 then
    L12_12 = true
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeIsTrustedLolbin"
    L19_19(L20_20)
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeIsTrustedLolbin!"
    L20_20 = L20_20 .. L17_17
    L19_19(L20_20)
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeIsTrustedLolbinFile!"
    L20_20 = L20_20 .. L4_4
    L19_19(L20_20)
  else
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeUntrustedLolbin"
    L19_19(L20_20)
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeUnTrustedLolbin!"
    L20_20 = L20_20 .. L17_17
    L19_19(L20_20)
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeUnTrustedLolbinFile!"
    L20_20 = L20_20 .. L4_4
    L19_19(L20_20)
    L19_19 = mp
    L19_19 = L19_19.set_mpattribute
    L20_20 = "Lua:PeUntrustedLolbinExt!"
    L20_20 = L20_20 .. L15_15
    L19_19(L20_20)
  end
end
L19_19 = mp
L20_20 = "get_contextdata"
L19_19 = L19_19[L20_20]
L20_20 = mp
L20_20 = L20_20.CONTEXT_DATA_SCANREASON
L19_19 = L19_19(L20_20)
L20_20 = mp
L20_20 = L20_20.SCANREASON_ONMODIFIEDHANDLECLOSE
if L19_19 == L20_20 then
  L20_20 = mp
  L20_20 = L20_20.get_contextdata
  L20_20 = L20_20(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L20_20 == true then
    L20_20 = string
    L20_20 = L20_20.lower
    L20_20 = L20_20(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
    L11_11 = true
    mp.set_mpattribute("Lua:NewPeFile")
    mp.set_mpattribute("Lua:NewPeFile!" .. L4_4)
    if #L20_20 > 38 then
      mp.set_mpattribute("Lua:RtpProcNameTooLong")
    else
      mp.set_mpattribute("Lua:NewPeFileWrittenBy!" .. L20_20)
    end
    if L20_20:find("rufus", 1, true) then
      mp.set_mpattribute("Lua:NewPeFileWrittenBy!rufus")
    end
    if L20_20 == "mscorsvw.exe" and (L4_4:match("%.ni%.exe$") or L4_4:match("%.ni%.dll$")) then
      mp.set_mpattribute("Lua:CleanFileWrittenBy!mscorsvw.exe")
    end
    if L18_18 and not L9_9 and not L8_8 and L7_7 then
      mp.set_mpattribute("MpDisableCaching")
    end
  end
end
L20_20 = "dll|ocx"
if L11_11 and not L9_9 and not L8_8 and not L12_12 and not L10_10 and L7_7 and L20_20:find(L15_15) then
  mp.set_mpattribute("Lua:PossiblyForSideloading!" .. L4_4)
  mp.set_mpattribute("Lua:PeMonitorForSideload")
end
return mp.INFECTED
