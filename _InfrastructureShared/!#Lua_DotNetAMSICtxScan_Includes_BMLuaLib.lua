local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_AMSI_APPNAME
L1_1 = L0_0(L1_1, L2_2)
if not L0_0 or not L1_1 or L1_1 ~= "DotNet" and L1_1 ~= "coreclr" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "Lua:IsDotNetAMSIScan"
L2_2(L3_3)
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
L3_3 = L2_2(L3_3, L4_4)
if not L2_2 or not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = sysio
L4_4 = L4_4.GetFileNameFromProcess
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L5_5 = sysio
L5_5 = L5_5.GetLastResult
L5_5 = L5_5()
L5_5 = L5_5.Success
if not L5_5 or not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L6_6 = "Lua:IsDotNetAMSIScan_NoProcess"
  L5_5(L6_6)
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = false
L6_6 = string
L6_6 = L6_6.lower
L6_6 = L6_6(L4_4)
L4_4 = L6_6
L6_6 = #L4_4
if L6_6 >= 15 then
  L6_6 = L4_4.sub
  L6_6 = L6_6(L4_4, -15)
  if L6_6 == "\\powershell.exe" then
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6("Lua:IsDotNetAMSIScan_PowerShell")
  end
else
  L6_6 = #L4_4
  if L6_6 >= 12 then
    L6_6 = L4_4.sub
    L6_6 = L6_6(L4_4, -12)
    if L6_6 ~= "\\wscript.exe" then
      L6_6 = L4_4.sub
      L6_6 = L6_6(L4_4, -12)
    elseif L6_6 == "\\cscript.exe" then
      L6_6 = mp
      L6_6 = L6_6.set_mpattribute
      L6_6("Lua:IsDotNetAMSIScan_WScript")
    end
  else
    L6_6 = #L4_4
    if L6_6 >= 17 then
      L6_6 = L4_4.sub
      L6_6 = L6_6(L4_4, -17)
      if L6_6 == "\\inetsrv\\w3wp.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L6_6("Lua:IsDotNetAMSIScan_IIS")
        L6_6 = mp
        L6_6 = L6_6.GetProcessCommandLine
        L6_6 = L6_6(L3_3)
        if string.find(L6_6, "-ap \"MSExchange", 1, true) or string.find(L6_6, "-ap \"MSUccPowerShellAppPool", 1, true) or string.find(L6_6, "-ap \"MSUccPswsFrontEndAppPool", 1, true) or string.find(L6_6, "-ap \"MSUccPowerShellLiveIdAppPool", 1, true) then
          mp.set_mpattribute("Lua:IsDotNetAMSIScan_Exchg")
        elseif string.find(L6_6, "-ap \"", 1, true) == nil and IsExchangeServer() ~= nil then
          mp.set_mpattribute("Lua:IsDotNetAMSIScan_ExchgPlatform")
        elseif string.find(L6_6, "-ap \"SharePoint", 1, true) or string.find(L6_6, "-ap \"SecurityTokenServiceApplicationPool", 1, true) or string.find(L6_6, "-ap \"ODSPNotificationListeningEndpoint", 1, true) or string.find(L6_6, "-ap \"GridManagerAppPool", 1, true) or string.find(L6_6, "-ap \"Grid SharePoint", 1, true) then
          mp.set_mpattribute("Lua:IsDotNetAMSIScan_SharePoint")
        end
      end
    else
      L6_6 = #L4_4
      if L6_6 >= 18 then
        L6_6 = L4_4.sub
        L6_6 = L6_6(L4_4, -18)
        if L6_6 == "\\runtimebroker.exe" then
          L6_6 = mp
          L6_6 = L6_6.set_mpattribute
          L6_6("Lua:IsDotNetAMSIScan_RuntimeBroker")
        end
      else
        L6_6 = #L4_4
        if L6_6 >= 13 then
          L6_6 = L4_4.sub
          L6_6 = L6_6(L4_4, -13)
          if L6_6 == "\\sqlservr.exe" then
            L6_6 = mp
            L6_6 = L6_6.set_mpattribute
            L6_6("Lua:IsDotNetAMSIScan_SQLServer")
          end
        else
          L6_6 = #L4_4
          if L6_6 >= 13 then
            L6_6 = L4_4.sub
            L6_6 = L6_6(L4_4, -13)
            if L6_6 == "\\rundll32.exe" then
              L6_6 = mp
              L6_6 = L6_6.set_mpattribute
              L6_6("Lua:IsDotNetAMSIScan_Rundll32")
            end
          else
            L6_6 = #L4_4
            if L6_6 >= 8 then
              L6_6 = L4_4.sub
              L6_6 = L6_6(L4_4, -8)
              if L6_6 == "\\mmc.exe" then
                L6_6 = mp
                L6_6 = L6_6.set_mpattribute
                L6_6("Lua:IsDotNetAMSIScan_MMC")
              end
            end
          end
        end
      end
    end
  end
end
L6_6 = #L4_4
if L6_6 >= 9 then
  L6_6 = L4_4.sub
  L6_6 = L6_6(L4_4, 2, 9)
  if L6_6 == ":\\users\\" then
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6("Lua:IsDotNetAMSIScan_Users")
    L5_5 = true
  end
else
  L6_6 = #L4_4
  if L6_6 >= 15 then
    L6_6 = L4_4.sub
    L6_6 = L6_6(L4_4, 2, 15)
    if L6_6 == ":\\programdata\\" then
      L6_6 = mp
      L6_6 = L6_6.set_mpattribute
      L6_6("Lua:IsDotNetAMSIScan_ProgramData")
      L5_5 = true
    end
  else
    L6_6 = #L4_4
    if L6_6 >= 11 then
      L6_6 = L4_4.sub
      L6_6 = L6_6(L4_4, 2, 11)
      if L6_6 == ":\\windows\\" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L6_6("Lua:IsDotNetAMSIScan_Windir")
        L6_6 = #L4_4
        if L6_6 >= 20 then
          L6_6 = L4_4.sub
          L6_6 = L6_6(L4_4, 11, 20)
          if L6_6 ~= "\\system32\\" then
            L6_6 = L4_4.sub
            L6_6 = L6_6(L4_4, 11, 20)
          elseif L6_6 == "\\syswow64\\" then
            L6_6 = mp
            L6_6 = L6_6.set_mpattribute
            L6_6("Lua:IsDotNetAMSIScan_System")
          end
        else
          L6_6 = #L4_4
          if L6_6 >= 25 then
            L6_6 = L4_4.sub
            L6_6 = L6_6(L4_4, 11, 25)
            if L6_6 == "\\microsoft.net\\" then
              L6_6 = mp
              L6_6 = L6_6.set_mpattribute
              L6_6("Lua:IsDotNetAMSIScan_Framework")
            end
          end
        end
      end
    else
      L6_6 = #L4_4
      if L6_6 >= 17 then
        L6_6 = L4_4.sub
        L6_6 = L6_6(L4_4, 2, 17)
      else
        if L6_6 ~= ":\\program files\\" then
          L6_6 = #L4_4
          if L6_6 >= 23 then
            L6_6 = L4_4.sub
            L6_6 = L6_6(L4_4, 2, 23)
          end
      end
      else
        if L6_6 == ":\\program files (x86)\\" then
          L6_6 = mp
          L6_6 = L6_6.set_mpattribute
          L6_6("Lua:IsDotNetAMSIScan_ProgramFiles")
      end
      else
        L5_5 = true
      end
    end
  end
end
if L5_5 then
  L6_6 = mp
  L6_6 = L6_6.IsKnownFriendlyFile
  L6_6 = L6_6(L4_4, true, false)
  if not L6_6 then
    L6_6 = mp
    L6_6 = L6_6.ReportLowfi
    L6_6(L4_4, 2670337877)
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
