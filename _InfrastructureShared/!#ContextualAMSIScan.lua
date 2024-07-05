local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "MpIsAMSIScan"
  L1_1(L2_2)
  L1_1 = pcall
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 then
    if L2_2 == "{8f8336b8-0515-4cc5-ab8a-204531b42a55}" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsEdgeAMSIScan"
      L3_3(L4_4)
    elseif L2_2 == "{28a7d36f-6463-4fa1-8888-7d07eb77612f}" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsSmartScreenAMSIScan"
      L3_3(L4_4)
    elseif L2_2 == "JScript" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsJScriptAMSIScan"
      L3_3(L4_4)
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L4_4 = mp
      L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
      L3_3 = L3_3(L4_4)
      if L3_3 == nil then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L4_4 = sysio
      L4_4 = L4_4.GetFileNameFromProcess
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = string
      L6_6 = L6_6.sub
      L7_7 = L4_4
      L8_8 = -15
      L8_8 = L6_6(L7_7, L8_8)
      L5_5 = L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8))
      L6_6 = L5_5
      L5_5 = L5_5.match
      L7_7 = "\\([^\\]+%.exe)$"
      L5_5 = L5_5(L6_6, L7_7)
      if L5_5 == "powershell.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpPowershellJavascriptAmsiScan"
        L6_6(L7_7)
      elseif L5_5 == "msiexec.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpMsiexecJavascriptAmsiScan"
        L6_6(L7_7)
      elseif L5_5 == "wscript.exe" or L5_5 == "cscript.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpVBJScriptInterpreterAmsiScan"
        L6_6(L7_7)
      end
    elseif L2_2 == "VBScript" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsVBScriptAMSIScan"
      L3_3(L4_4)
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L4_4 = mp
      L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
      L3_3 = L3_3(L4_4)
      if L3_3 == nil then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L4_4 = sysio
      L4_4 = L4_4.GetFileNameFromProcess
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = string
      L6_6 = L6_6.sub
      L7_7 = L4_4
      L8_8 = -12
      L8_8 = L6_6(L7_7, L8_8)
      L5_5 = L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8))
      L6_6 = L5_5
      L5_5 = L5_5.match
      L7_7 = "\\([^\\]+%.exe)$"
      L5_5 = L5_5(L6_6, L7_7)
      if L5_5 == "wscript.exe" or L5_5 == "cscript.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpVBJScriptInterpreterAmsiScan"
        L6_6(L7_7)
      end
    elseif L2_2 == "JScript.Encode" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsJScriptEncodeAMSIScan"
      L3_3(L4_4)
    elseif L2_2 == "VBScript.Encode" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsVBScriptEncodeAMSIScan"
      L3_3(L4_4)
    elseif L2_2 == "WMI" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsWmiAMSIScan"
      L3_3(L4_4)
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L4_4 = mp
      L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
      L3_3 = L3_3(L4_4)
      if L3_3 == nil then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L4_4 = sysio
      L4_4 = L4_4.GetFileNameFromProcess
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = string
      L6_6 = L6_6.sub
      L7_7 = L4_4
      L8_8 = -13
      L8_8 = L6_6(L7_7, L8_8)
      L5_5 = L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8))
      L6_6 = L5_5
      L5_5 = L5_5.match
      L7_7 = "\\([^\\]+%.exe)$"
      L5_5 = L5_5(L6_6, L7_7)
      if L5_5 == "winword.exe" or L5_5 == "excel.exe" or L5_5 == "powerpnt.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpIsOfficeWmiAmsiScan"
        L6_6(L7_7)
      elseif L5_5 == "w3wp.exe" then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpIsIISWmiAmsiScan"
        L6_6(L7_7)
      end
    elseif L2_2 == "Hvsi" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L4_4 = "MpIsWdagAMSIScan"
      L3_3(L4_4)
    else
      L3_3 = string
      L3_3 = L3_3.sub
      L4_4 = L2_2
      L5_5 = 1
      L6_6 = 10
      L3_3 = L3_3(L4_4, L5_5, L6_6)
      if L3_3 == "OFFICE_VBA" then
        L3_3 = mp
        L3_3 = L3_3.get_contextdata
        L4_4 = mp
        L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
        L3_3 = L3_3(L4_4)
        if L3_3 == nil then
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
        L4_4 = sysio
        L4_4 = L4_4.GetFileNameFromProcess
        L5_5 = L3_3
        L4_4 = L4_4(L5_5)
        L5_5 = string
        L5_5 = L5_5.lower
        L6_6 = string
        L6_6 = L6_6.sub
        L7_7 = L4_4
        L8_8 = -13
        L8_8 = L6_6(L7_7, L8_8)
        L5_5 = L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8))
        L6_6 = L5_5
        L5_5 = L5_5.match
        L7_7 = "\\([^\\]+%.exe)$"
        L5_5 = L5_5(L6_6, L7_7)
        if L5_5 == "winword.exe" or L5_5 == "excel.exe" or L5_5 == "powerpnt.exe" then
          L6_6 = mp
          L6_6 = L6_6.set_mpattribute
          L7_7 = "MpIsOfficeVbaAMSIScanViaOfficeProdApps"
          L6_6(L7_7)
        end
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "MpIsOfficeVbaAMSIScan"
        L6_6(L7_7)
      else
        L3_3 = string
        L3_3 = L3_3.sub
        L4_4 = L2_2
        L5_5 = 1
        L6_6 = 11
        L3_3 = L3_3(L4_4, L5_5, L6_6)
        if L3_3 == "PowerShell_" then
          L3_3 = mp
          L3_3 = L3_3.set_mpattribute
          L4_4 = "MpIsPowerShellAMSIScan"
          L3_3(L4_4)
          L3_3 = mp
          L3_3 = L3_3.get_contextdata
          L4_4 = mp
          L4_4 = L4_4.CONTEXT_DATA_AMSI_OPERATION_PPID
          L3_3 = L3_3(L4_4)
          if L3_3 == nil then
            L4_4 = mp
            L4_4 = L4_4.CLEAN
            return L4_4
          end
          L4_4 = sysio
          L4_4 = L4_4.GetFileNameFromProcess
          L5_5 = L3_3
          L4_4 = L4_4(L5_5)
          L5_5 = string
          L5_5 = L5_5.lower
          L6_6 = string
          L6_6 = L6_6.sub
          L7_7 = L4_4
          L8_8 = -10
          L8_8 = L6_6(L7_7, L8_8)
          L5_5 = L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8))
          L6_6 = L5_5
          L5_5 = L5_5.match
          L7_7 = "\\([^\\]+%.exe)$"
          L5_5 = L5_5(L6_6, L7_7)
          if L5_5 == "sqlps.exe" then
            L6_6 = mp
            L6_6 = L6_6.set_mpattribute
            L7_7 = "MpIsSqlpsAmsiScan"
            L6_6(L7_7)
          end
          L6_6 = pcall
          L7_7 = mp
          L7_7 = L7_7.get_contextdata
          L8_8 = mp
          L8_8 = L8_8.CONTEXT_DATA_AMSI_CONTENTNAME
          L7_7 = L6_6(L7_7, L8_8)
          if L6_6 and L7_7 ~= nil then
            L8_8 = string
            L8_8 = L8_8.len
            L8_8 = L8_8(L7_7)
            if L8_8 > 5 then
              L8_8 = string
              L8_8 = L8_8.sub
              L8_8 = L8_8(L7_7, -5)
              if string.match(L8_8, ".%.ps1") or L8_8 == ".psd1" or L8_8 == ".psm1" then
                mp.set_mpattribute("MpPowershellHasValidAmsiContentName")
              end
            end
          end
        elseif L2_2 == "Excel" then
          L3_3 = mp
          L3_3 = L3_3.set_mpattribute
          L4_4 = "MpIsXl4mAmsiScan"
          L3_3(L4_4)
        else
          L3_3 = string
          L3_3 = L3_3.sub
          L4_4 = L2_2
          L5_5 = 1
          L6_6 = 15
          L3_3 = L3_3(L4_4, L5_5, L6_6)
          if L3_3 == "Exchange Server" then
            L3_3 = mp
            L3_3 = L3_3.set_mpattribute
            L4_4 = "MpIsExchangeAmsiScan"
            L3_3(L4_4)
          else
            L3_3 = string
            L3_3 = L3_3.sub
            L4_4 = L2_2
            L5_5 = 1
            L6_6 = 17
            L3_3 = L3_3(L4_4, L5_5, L6_6)
            if L3_3 == "SharePoint Server" then
              L3_3 = mp
              L3_3 = L3_3.set_mpattribute
              L4_4 = "MpIsSharePointAmsiScan"
              L3_3(L4_4)
            elseif L2_2 == "Skype for Business Server" then
              L3_3 = mp
              L3_3 = L3_3.set_mpattribute
              L4_4 = "MpIsSkypeAmsiScan"
              L3_3(L4_4)
            elseif L2_2 == "VSSAMSI" then
              L3_3 = mp
              L3_3 = L3_3.set_mpattribute
              L4_4 = "MpIsVssAmsiScan"
              L3_3(L4_4)
            end
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
