local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L11_11 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 4 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "winbio.dll|amsi.dll|wldp.dll|hid.dll|activeds.dll|credui.dll|dpx.dll|dui70.dll|duser.dll|dwmapi.dll|dxgi.dll|fvewiz.dll|mfc42u.dll|oleacc.dll|secur32.dll|slc.dll|spp.dll|tapi32.dll|uxtheme.dll|wer.dll|winbrand.dll|winmm.dll|winsta.dll|wtsapi32.dll|xmllite.dll"
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = L1_1
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L4_4 = {}
L4_4.AttributeName = "Lua:Bioload"
L5_5 = {}
L5_5["facefoduninstaller.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L5_5["%windir%\\system32\\winbioplugins"] = ""
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["winbio.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:AmsiPreload"
L5_5 = {}
L5_5["powershell.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["amsi.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:wldpBypass"
L5_5 = {}
L5_5["rundll32.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["wldp.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:hidPreload"
L5_5 = {}
L5_5["osk.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L5_5["%programfiles%\\common files\\microsoft shared\\ink"] = ""
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["hid.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:activedsPreload"
L5_5 = {}
L5_5["agentservice.exe"] = ""
L5_5["sppextcomobj.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["activeds.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:creduiPreload"
L5_5 = {}
L5_5["mstsc.exe"] = ""
L5_5["wfs.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["credui.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:dpxPreload"
L5_5 = {}
L5_5["lpksetup.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["dpx.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:duiPreload"
L5_5 = {}
L5_5["bdechangepin.exe"] = ""
L5_5["camerasettingsuihost.exe"] = ""
L5_5["cloudstoragewizard.exe"] = ""
L5_5["displayswitch.exe"] = ""
L5_5["dmnotificationbroker.exe"] = ""
L5_5["dpapimig.exe"] = ""
L5_5["licensingui.exe"] = ""
L5_5["phoneactivate.exe"] = ""
L5_5["proximityuxhost.exe"] = ""
L5_5["sessionmsg.exe"] = ""
L5_5["sysreseterr.exe"] = ""
L5_5["utilman.exe"] = ""
L5_5["windowsactiondialog.exe"] = ""
L5_5["wlrmdr.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["dui70.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:duserPreload"
L5_5 = {}
L5_5["bdeunlock.exe"] = ""
L5_5["msdt.exe"] = ""
L5_5["utilman.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["duser.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:dwmapiPreload"
L5_5 = {}
L5_5["dxpserver.exe"] = ""
L5_5["gamepanel.exe"] = ""
L5_5["proximityuxhost.exe"] = ""
L5_5["rdpinit.exe"] = ""
L5_5["rdvghelper.exe"] = ""
L5_5["sndvol.exe"] = ""
L5_5["wmpdmc.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["dwmapi.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:dxgiPreload"
L5_5 = {}
L5_5["dxgiadaptercache.exe"] = ""
L5_5["gamepanel.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["dxgi.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:fvewizPreload"
L5_5 = {}
L5_5["bitlockerwizard.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["fvewiz.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:mfc42uPreload"
L5_5 = {}
L5_5["devicepairingwizard.exe"] = ""
L5_5["fxscover.exe"] = ""
L5_5["irftp.exe"] = ""
L5_5["msinfo32.exe"] = ""
L5_5["mspaint.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["mfc42u.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:oleaccPreload"
L5_5 = {}
L5_5["cttune.exe"] = ""
L5_5["rtkauduservice64.exe"] = ""
L5_5["utilman.exe"] = ""
L5_5["wmpdmc.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["oleacc.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:uxthemePreload"
L5_5 = {}
L5_5["atbroker.exe"] = ""
L5_5["cttune.exe"] = ""
L5_5["displayswitch.exe"] = ""
L5_5["ehstorauthn.exe"] = ""
L5_5["gamepanel.exe"] = ""
L5_5["isoburn.exe"] = ""
L5_5["msdt.exe"] = ""
L5_5["sethc.exe"] = ""
L5_5["sndvol.exe"] = ""
L5_5["wfs.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["uxtheme.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:wtsapi32Preload"
L5_5 = {}
L5_5["bdeuisrv.exe"] = ""
L5_5["igfxcuiservice.exe"] = ""
L5_5["igfxem.exe"] = ""
L5_5["mblctr.exe"] = ""
L5_5["mdmappinstaller.exe"] = ""
L5_5["raserver.exe"] = ""
L5_5["rdpinit.exe"] = ""
L5_5["rdvghelper.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["wtsapi32.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:xmllitePreload"
L5_5 = {}
L5_5["ddodiag.exe"] = ""
L5_5["deviceenroller.exe"] = ""
L5_5["dxpserver.exe"] = ""
L5_5["musnotificationux.exe"] = ""
L5_5["musnotifyicon.exe"] = ""
L5_5["omadmclient.exe"] = ""
L5_5["upfc.exe"] = ""
L5_5["usocoreworker.exe"] = ""
L5_5["wbengine.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["xmllite.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:slcPreload"
L5_5 = {}
L5_5["msinfo32.exe"] = ""
L5_5["phoneactivate.exe"] = ""
L5_5["slui.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["slc.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:winmmPreload"
L5_5 = {}
L5_5["mblctr.exe"] = ""
L5_5["mstsc.exe"] = ""
L5_5["xpsrchvw.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["winmm.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:winstaPreload"
L5_5 = {}
L5_5["displayswitch.exe"] = ""
L5_5["rdpclip.exe"] = ""
L5_5["rdpsauachelper.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["winsta.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:secur32Preload"
L5_5 = {}
L5_5["mstsc.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["secur32.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:sppPreload"
L5_5 = {}
L5_5["wbengine.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["spp.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:tapi32Preload"
L5_5 = {}
L5_5["dialer.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["tapi32.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:werPreload"
L5_5 = {}
L5_5["dwwin.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["wer.dll"] = L4_4
L4_4 = {}
L4_4.AttributeName = "Lua:winbrandPreload"
L5_5 = {}
L5_5["slui.exe"] = ""
L4_4.ProcessList = L5_5
L5_5 = {}
L4_4.SuspPathList = L5_5
L5_5 = {}
L5_5["%windir%\\system32"] = ""
L5_5["%windir%\\syswow64"] = ""
L4_4.CleanPathList = L5_5
L3_3["winbrand.dll"] = L4_4
L4_4 = L3_3[L1_1]
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "Lua:Preload"
L5_5 = L3_3[L1_1]
L5_5 = L5_5.AttributeName
if L5_5 ~= nil then
  L5_5 = L3_3[L1_1]
  L4_4 = L5_5.AttributeName
end
L5_5 = L3_3[L1_1]
L5_5 = L5_5.ProcessList
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L3_3[L1_1]
L5_5 = L5_5.CleanPathList
if L5_5 == nil then
  L5_5 = L3_3[L1_1]
  L5_5 = L5_5.SuspPathList
  if L5_5 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = mp
L5_5 = L5_5.getfilename
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L5_5 = L5_5(L6_6)
if L5_5 ~= nil then
  L6_6 = #L5_5
elseif L6_6 < 1 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = normalize_path
L7_7 = L5_5
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = string
L6_6 = L6_6.lower
L7_7 = mp
L7_7 = L7_7.get_contextdata
L11_11 = L7_7(L8_8)
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7(L8_8))
if L6_6 ~= nil then
  L7_7 = #L6_6
elseif L7_7 < 1 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = normalize_path
L7_7 = L7_7(L8_8)
L6_6 = L7_7
if L5_5 ~= L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = ""
if L8_8 ~= nil then
  for L11_11, _FORV_12_ in L8_8(L9_9) do
    if normalize_path(mp.ContextualExpandEnvironmentVariables(L11_11)) == L5_5 then
      return mp.CLEAN
    end
  end
  L7_7 = "NotInCleanPathList"
end
if L8_8 ~= nil then
  for L11_11, _FORV_12_ in L8_8(L9_9) do
    if normalize_path(mp.ContextualExpandEnvironmentVariables(L11_11)) == L5_5 then
      L7_7 = "SuspPathList"
      break
    end
  end
end
if L8_8 == nil then
  return L8_8
end
L11_11 = L9_9(L10_10)
if L8_8 ~= nil then
elseif L9_9 == 0 then
  return L9_9
end
if L9_9 ~= nil then
  L11_11 = L8_8
  if L10_10 > 62 then
    return L10_10
  end
  L11_11 = L9_9
  L10_10(L11_11)
  return L10_10
elseif L9_9 == true then
  L11_11 = L1_1
  L11_11 = L9_9
  if L10_10 ~= true then
    L11_11 = false
  elseif L10_10 == true then
    return L10_10
  end
  L11_11 = "MpDisableCaching"
  L10_10(L11_11)
end
return L9_9
