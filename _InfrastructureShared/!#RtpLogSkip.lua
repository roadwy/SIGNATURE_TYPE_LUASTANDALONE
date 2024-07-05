local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
function L0_0(A0_16, A1_17, A2_18)
  if type(A1_17) == "table" then
    if A2_18 == nil then
      A2_18 = 4
    end
    return A0_16 ~= nil and A1_17 ~= nil and A2_18 <= #A0_16 and A1_17[string.sub(A0_16, -A2_18)] ~= nil
  end
  return A1_17 == "" or string.sub(A0_16, -string.len(A1_17)) == A1_17
end
function L1_1(A0_19, A1_20)
  local L2_21, L3_22, L4_23
  L2_21 = string
  L2_21 = L2_21.sub
  L3_22 = A0_19
  L4_23 = 1
  L2_21 = L2_21(L3_22, L4_23, string.len(A1_20))
  L2_21 = L2_21 == A1_20
  return L2_21
end
L2_2 = skip
L2_2 = L2_2.get_contextdata
L3_3 = skip
L3_3 = L3_3.CONTEXT_DATA_SCANREASON
L2_2 = L2_2(L3_3)
if L2_2 == 12 then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = skip
  L4_4 = L4_4.get_contextdata
  L5_5 = 32
  L15_15 = L4_4(L5_5)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L4_4(L5_5))
  if L3_3 == "exchange server 2019" or L3_3 == "exchange server 2016" then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = skip
    L5_5 = L5_5.get_contextdata
    L6_6 = 34
    L15_15 = L5_5(L6_6)
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L5_5(L6_6))
    L5_5 = L1_1
    L6_6 = L4_4
    L7_7 = "urlpath:/mapi/emsmdb"
    L5_5 = L5_5(L6_6, L7_7)
    if not L5_5 then
      L5_5 = L1_1
      L6_6 = L4_4
      L7_7 = "urlpath:/rpc/rpcproxy.dll"
      L5_5 = L5_5(L6_6, L7_7)
      if not L5_5 then
        L5_5 = L1_1
        L6_6 = L4_4
        L7_7 = "urlpath:/owa/service.svc"
        L5_5 = L5_5(L6_6, L7_7)
      end
    elseif L5_5 then
      L5_5 = true
      return L5_5
    end
  end
end
L3_3 = skip
L3_3 = L3_3.SCANREASON_ONMODIFIEDHANDLECLOSE
if L2_2 ~= L3_3 then
  L3_3 = skip
  L3_3 = L3_3.SCANREASON_ONOPEN
  if L2_2 ~= L3_3 and L2_2 ~= 1 then
    L3_3 = 0
    return L3_3
  end
end
L3_3 = skip
L3_3 = L3_3.get_contextdata
L4_4 = skip
L4_4 = L4_4.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
L3_3 = L3_3(L4_4)
if L3_3 then
  L3_3 = 0
  return L3_3
end
function L3_3(A0_24, A1_25)
  if A0_24 == "excel.exe" or A0_24 == "winword.exe" or A0_24 == "powerpnt.exe" or A0_24 == "outlook.exe" or A0_24 == "msaccess.exe" or A0_24 == "mspub.exe" or A0_24 == "onenote.exe" then
    if A1_25:find("^\\device\\harddiskvolume%d*\\program files\\microsoft office\\root\\office") ~= nil then
      return true
    end
    if A1_25:find("^\\device\\harddiskvolume%d*\\program files %(x86%)\\microsoft office\\root\\office") ~= nil then
      return true
    end
    if A1_25:find("^\\device\\harddiskvolume%d*\\program files\\windowsapps\\microsoft%.office%.desktop%.") ~= nil then
      return true
    end
  end
  return false
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = skip
L5_5 = L5_5.get_contextdata
L6_6 = skip
L6_6 = L6_6.CONTEXT_DATA_FILEPATH
L15_15 = L5_5(L6_6)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L5_5(L6_6))
L5_5 = skip
L5_5 = L5_5.get_contextdata
L6_6 = skip
L6_6 = L6_6.CONTEXT_DATA_PROCESS_ID
L5_5 = L5_5(L6_6)
if L5_5 == 4 then
  L6_6 = skip
  L6_6 = L6_6.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L2_2 == L6_6 then
    L7_7 = L4_4
    L6_6 = L4_4.match
    L8_8 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs"
    L8_8 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil and L7_7 ~= nil and L8_8 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = skip
L7_7 = L7_7.get_contextdata
L8_8 = skip
L8_8 = L8_8.CONTEXT_DATA_FILENAME
L15_15 = L7_7(L8_8)
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L7_7(L8_8))
if L6_6 == "pagefile.sys" or L6_6 == "hiberfil.sys" or L6_6 == "swapfile.sys" then
  L8_8 = L4_4
  L7_7 = L4_4.match
  L9_9 = "^\\device\\harddiskvolumeshadowcopy%d*$"
  L7_7 = L7_7(L8_8, L9_9)
  if L7_7 ~= nil then
    L8_8 = 1
    return L8_8
  end
  L9_9 = L4_4
  L8_8 = L4_4.match
  L10_10 = "^\\device\\harddiskvolume%d*$"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 ~= nil then
    L9_9 = 1
    return L9_9
  end
end
L7_7 = string
L7_7 = L7_7.lower
L8_8 = skip
L8_8 = L8_8.get_contextdata
L9_9 = skip
L9_9 = L9_9.CONTEXT_DATA_PROCESSNAME
L15_15 = L8_8(L9_9)
L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L8_8(L9_9))
if L7_7 == "rundll32.exe" or L7_7 == "dllhost.exe" or L7_7 == "regsvr32.exe" or L7_7 == "cscript.exe" or L7_7 == "jscript.exe" or L7_7 == "cmd.exe" or L7_7 == "curl.exe" or L7_7 == "powershell.exe" or L7_7 == "powershell_ise.exe" or L7_7 == "wscript.exe" or L7_7 == "mshta.exe" or L7_7 == "csc.exe" or L7_7 == "jsc.exe" or L7_7 == "vbc.exe" then
  L8_8 = 0
  return L8_8
end
L8_8 = string
L8_8 = L8_8.lower
L9_9 = skip
L9_9 = L9_9.get_contextdata
L10_10 = skip
L10_10 = L10_10.CONTEXT_DATA_PROCESSDEVICEPATH
L15_15 = L9_9(L10_10)
L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L9_9(L10_10))
if L2_2 == 1 then
  if L7_7 == "wmiprvse.exe" then
    L10_10 = L8_8
    L9_9 = L8_8.match
    L11_11 = "^\\device\\harddiskvolume(.*)\\windows"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil then
      L11_11 = L6_6
      L10_10 = L6_6.match
      L12_12 = "^dr%d*$"
      L10_10 = L10_10(L11_11, L12_12)
      if L10_10 then
        L10_10 = 1
        return L10_10
      end
    end
  end
  L9_9 = 0
  return L9_9
end
if L7_7 == "software_reporter_tool.exe" then
  L10_10 = L8_8
  L9_9 = L8_8.find
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\google\\chrome\\user data\\swreporter"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
end
L9_9 = skip
L9_9 = L9_9.SCANREASON_ONOPEN
if L2_2 == L9_9 and L7_7 == "idwutil_600.exe" then
  L9_9 = L0_0
  L10_10 = L8_8
  L11_11 = "\\program files (x86)\\idrivewindows\\cmd_dutil"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = 1
    return L9_9
  end
end
L9_9 = skip
L9_9 = L9_9.SCANREASON_ONMODIFIEDHANDLECLOSE
if L2_2 == L9_9 then
  L9_9 = skip
  L9_9 = L9_9.IsHipsRuleEnabled
  L10_10 = "56a863a9-875e-4185-98a7-b882c64b5ce5"
  L9_9 = L9_9(L10_10)
  if not L9_9 then
    L9_9 = L3_3
    L10_10 = L7_7
    L11_11 = L8_8
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 then
      L9_9 = skip
      L9_9 = L9_9.IsHipsRuleEnabled
      L10_10 = "3b576869-a4ec-4529-8536-b80a7769e899"
      L9_9 = L9_9(L10_10)
      if not L9_9 then
        L9_9 = skip
        L9_9 = L9_9.IsHipsRuleEnabled
        L10_10 = "92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B"
        L9_9 = L9_9(L10_10)
        if not L9_9 then
          L9_9 = skip
          L9_9 = L9_9.IsHipsRuleEnabled
          L10_10 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
          L9_9 = L9_9(L10_10)
          if not L9_9 then
            L9_9 = skip
            L9_9 = L9_9.IsHipsRuleEnabled
            L10_10 = "c28bf0fb-388c-438b-a41d-8688461af900"
            L9_9 = L9_9(L10_10)
            if not L9_9 then
              L9_9 = L0_0
              L10_10 = L6_6
              L11_11 = ".xoml"
              L9_9 = L9_9(L10_10, L11_11)
              if not L9_9 then
                L9_9 = 1
                return L9_9
              end
            end
          end
        end
      end
    end
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L7_7
    L11_11 = "rar.exe"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 == nil then
      L9_9 = string
      L9_9 = L9_9.sub
      L10_10 = L7_7
      L11_11 = 1
      L12_12 = 2
      L9_9 = L9_9(L10_10, L11_11, L12_12)
    elseif L9_9 == "7z" then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L8_8
      L11_11 = "\\program files\\7-zip"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      L9_9 = L9_9 ~= nil or L9_9 ~= nil
      L10_10 = L9_9 and L10_10 == "7z" and (L7_7 == "7z.exe" or L7_7 == "7za.exe" or L7_7 == "7zfm.exe" or L7_7 == "7zg.exe" or L10_10 ~= nil or L10_10 ~= nil)
      L11_11 = string
      L11_11 = L11_11.find
      L12_12 = L8_8
      L13_13 = "\\program files\\winrar"
      L14_14 = 1
      L15_15 = true
      L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
      L11_11 = L11_11 ~= nil or L11_11 ~= nil
      L12_12 = L11_11 and (L7_7 == "rar.exe" or L7_7 == "unrar.exe" or L7_7 == "winrar.exe")
      if L10_10 or L12_12 then
        L13_13 = skip
        L13_13 = L13_13.IsHipsRuleEnabled
        L14_14 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
        L13_13 = L13_13(L14_14)
        if not L13_13 then
          L13_13 = skip
          L13_13 = L13_13.IsHipsRuleEnabled
          L14_14 = "5beb7efe-fd9a-4556-801d-275e5ffc04cc"
          L13_13 = L13_13(L14_14)
          if not L13_13 then
            L13_13 = 1
            return L13_13
          end
        end
      end
    end
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L7_7
    L11_11 = "setup"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 == nil then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L7_7
      L11_11 = "install"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    elseif L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "\\program files"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L10_10 = L4_4
      L9_9 = L4_4.match
      L11_11 = "^\\device\\harddiskvolume%d*\\program files\\"
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 ~= nil then
        L10_10 = 1
        return L10_10
      end
      L11_11 = L4_4
      L10_10 = L4_4.match
      L12_12 = "^\\device\\harddiskvolume%d*\\program files %(x86%)\\"
      L10_10 = L10_10(L11_11, L12_12)
      L9_9 = L10_10
      if L9_9 ~= nil then
        L10_10 = 1
        return L10_10
      end
    end
    L9_9 = L1_1
    L10_10 = L4_4
    L11_11 = "\\device\\mup\\"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 then
      L9_9 = 1
      return L9_9
    end
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L8_8
    L11_11 = "\\programdata\\ul\\pcmark"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L8_8
    L11_11 = "\\program files\\windowsapps\\"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 == nil then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L8_8
      L11_11 = "\\windows\\systemapps\\"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    elseif L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
    L9_9 = L0_0
    L10_10 = L7_7
    L11_11 = ".tmp"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 then
      L9_9 = L0_0
      L10_10 = L6_6
      L11_11 = ".tmp"
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 then
        L9_9 = 1
        return L9_9
      end
      L10_10 = L4_4
      L9_9 = L4_4.match
      L11_11 = "^\\device\\harddiskvolume%d*\\program files\\"
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 ~= nil then
        L10_10 = 1
        return L10_10
      end
      L11_11 = L4_4
      L10_10 = L4_4.match
      L12_12 = "^\\device\\harddiskvolume%d*\\program files %(x86%)\\"
      L10_10 = L10_10(L11_11, L12_12)
      L9_9 = L10_10
      if L9_9 ~= nil then
        L10_10 = 1
        return L10_10
      end
    end
    L9_9 = string
    L9_9 = L9_9.sub
    L10_10 = L7_7
    L11_11 = 1
    L12_12 = 4
    L9_9 = L9_9(L10_10, L11_11, L12_12)
    if L9_9 == "npp." then
      L9_9 = L0_0
      L10_10 = L7_7
      L11_11 = ".installer.x64.exe"
      L9_9 = L9_9(L10_10, L11_11)
      if not L9_9 then
        L9_9 = L0_0
        L10_10 = L7_7
        L11_11 = ".installer.exe"
        L9_9 = L9_9(L10_10, L11_11)
      elseif L9_9 then
        L9_9 = 1
        return L9_9
      end
    end
    L9_9 = string
    L9_9 = L9_9.sub
    L10_10 = L7_7
    L11_11 = 1
    L12_12 = 7
    L9_9 = L9_9(L10_10, L11_11, L12_12)
    if L9_9 == "rstudio" then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L7_7
      L11_11 = "rstudio%d%.exe"
      L9_9 = L9_9(L10_10, L11_11)
      if L9_9 ~= nil then
        L9_9 = 1
        return L9_9
      end
    end
    L9_9 = L0_0
    L10_10 = L6_6
    L11_11 = ".html"
    L9_9 = L9_9(L10_10, L11_11)
    if not L9_9 then
      L9_9 = L0_0
      L10_10 = L6_6
      L11_11 = ".js"
      L9_9 = L9_9(L10_10, L11_11)
      if not L9_9 then
        L9_9 = L0_0
        L10_10 = L6_6
        L11_11 = ".css"
        L9_9 = L9_9(L10_10, L11_11)
      end
    elseif L9_9 then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L4_4
      L11_11 = "\\doc\\"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      if L9_9 ~= nil then
        L9_9 = 1
        return L9_9
      end
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L4_4
      L11_11 = "\\docs\\"
      L12_12 = 1
      L13_13 = true
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      if L9_9 ~= nil then
        L9_9 = 1
        return L9_9
      end
    end
    L10_10 = L4_4
    L9_9 = L4_4.match
    L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
    L10_10 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil and L10_10 ~= nil then
      L11_11 = L0_0
      L12_12 = L6_6
      L13_13 = ".mptest"
      L11_11 = L11_11(L12_12, L13_13)
      if not L11_11 then
        L12_12 = L8_8
        L11_11 = L8_8.match
        L13_13 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
        L12_12 = L11_11(L12_12, L13_13)
        if L9_9 == L11_11 and L10_10 == L12_12 then
          L13_13 = 1
          return L13_13
        end
      end
    end
  end
end
L9_9 = string
L9_9 = L9_9.sub
L10_10 = L7_7
L11_11 = 1
L12_12 = 4
L9_9 = L9_9(L10_10, L11_11, L12_12)
if L9_9 == "npp." then
  L9_9 = L0_0
  L10_10 = L7_7
  L11_11 = ".installer.exe"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "^\\device\\harddiskvolume%d*\\program files %(x86%)\\notepad%+%+"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
  L9_9 = L0_0
  L10_10 = L7_7
  L11_11 = ".installer.x64.exe"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "^\\device\\harddiskvolume%d*\\program files\\notepad%+%+"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
end
L9_9 = L0_0
L10_10 = L8_8
L11_11 = "\\windows\\system32"
L9_9 = L9_9(L10_10, L11_11)
if not L9_9 then
  L9_9 = string
  L9_9 = L9_9.find
  L10_10 = L8_8
  L11_11 = "\\program files\\windowsapps\\"
  L12_12 = 1
  L13_13 = true
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
elseif L9_9 ~= nil then
  L9_9 = string
  L9_9 = L9_9.find
  L10_10 = L4_4
  L11_11 = "microsoft\\cryptneturlcache\\"
  L12_12 = 1
  L13_13 = true
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
end
if L7_7 == "runtimebroker.exe" then
  L9_9 = L0_0
  L10_10 = L8_8
  L11_11 = "\\windows\\system32"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "appdata\\roaming\\microsoft\\systemcertificates\\my\\certificates"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
end
if L7_7 == "waworkerhost.exe" then
  L9_9 = string
  L9_9 = L9_9.find
  L10_10 = L4_4
  L11_11 = "microsoft\\cryptneturlcache\\"
  L12_12 = 1
  L13_13 = true
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
  L10_10 = L6_6
  L9_9 = L6_6.match
  L11_11 = "^%d*$"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = 1
    return L9_9
  end
end
if L7_7 == "microsoft.office.web.certificatemanager.exe" then
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\programdata\\microsoft\\crypto\\rsa\\machinekeys"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
end
if L7_7 == "pingsender.exe" then
  L9_9 = L0_0
  L10_10 = L8_8
  L11_11 = "\\program files\\mozilla firefox"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "microsoft\\cryptneturlcache\\"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
end
if L7_7 == "chrome.exe" then
  L9_9 = L0_0
  L10_10 = L8_8
  L11_11 = "\\google\\chrome\\application"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "microsoft\\cryptneturlcache\\"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\google\\chrome\\user data"
  L10_10 = L9_9(L10_10, L11_11)
  if L10_10 ~= nil and L9_9 ~= nil then
    L12_12 = L8_8
    L11_11 = L8_8.match
    L13_13 = "^\\device\\harddiskvolume(.*)\\program files %(x86%)\\google\\chrome\\application"
    L11_11 = L11_11(L12_12, L13_13)
    if L9_9 == L11_11 then
      L12_12 = 1
      return L12_12
    end
  end
end
if L7_7 == "msedge.exe" or L7_7 == "msedgewebview2.exe" then
  L9_9 = L0_0
  L10_10 = L8_8
  L11_11 = "\\application"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L4_4
    L11_11 = "microsoft\\cryptneturlcache\\"
    L12_12 = 1
    L13_13 = true
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    if L9_9 ~= nil then
      L9_9 = 1
      return L9_9
    end
  end
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\user data"
  L11_11 = L9_9(L10_10, L11_11)
  L13_13 = L8_8
  L12_12 = L8_8.match
  L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application"
  L14_14 = L12_12(L13_13, L14_14)
  if L10_10 ~= nil and L9_9 ~= nil and L9_9 == L12_12 and L10_10 == L13_13 and L11_11 == L14_14 then
    L15_15 = 1
    return L15_15
  end
  L15_15 = L4_4.match
  L10_10, L11_11, L15_15 = L4_4, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application", L15_15(L4_4, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application")
  L9_9 = L15_15
  if L10_10 ~= nil and L9_9 ~= nil and L9_9 == L12_12 and L10_10 == L13_13 and L11_11 == L14_14 then
    L15_15 = 1
    return L15_15
  end
  L15_15 = L4_4.match
  L10_10, L15_15 = L4_4, L15_15(L4_4, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp")
  L9_9 = L15_15
  if L10_10 ~= nil and L9_9 ~= nil and L9_9 == L12_12 and L10_10 == L13_13 and L14_14 ~= nil then
    L15_15 = 1
    return L15_15
  end
  L15_15 = L4_4.match
  L10_10, L15_15 = L4_4, L15_15(L4_4, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages")
  L9_9 = L15_15
  if L10_10 ~= nil and L9_9 ~= nil and L9_9 == L12_12 and L10_10 == L13_13 and L14_14 ~= nil then
    L15_15 = 1
    return L15_15
  end
  L15_15 = L4_4.match
  L15_15 = L15_15(L4_4, "^\\device\\harddiskvolume(.*)\\windows\\fonts")
  L9_9 = L15_15
  if L9_9 ~= nil and L9_9 == L12_12 and L13_13 ~= nil and L14_14 ~= nil then
    L15_15 = 1
    return L15_15
  end
end
if L7_7 == "onedrive.exe" or L7_7 == "filecoauth.exe" or L7_7 == "onedrivesetup.exe" or L7_7 == "onedrivefilelauncher.exe" or L7_7 == "onedrivestandaloneupdater.exe" then
  L10_10 = L8_8
  L9_9 = L8_8.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\onedrive"
  L10_10 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil and L10_10 ~= nil then
    L12_12 = L4_4
    L11_11 = L4_4.match
    L13_13 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\onedrive"
    L12_12 = L11_11(L12_12, L13_13)
    if L11_11 == L9_9 and L12_12 == L10_10 then
      L13_13 = 1
      return L13_13
    end
  end
end
if L7_7 == "nuget.exe" then
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\.nuget\\packages"
  L10_10 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil and L10_10 ~= nil then
    L11_11 = 1
    return L11_11
  end
end
if L7_7 == "vlc-cache-gen.exe" then
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\program files([^\\]*)\\videolan\\vlc"
  L10_10 = L9_9(L10_10, L11_11)
  L12_12 = L8_8
  L11_11 = L8_8.match
  L13_13 = "^\\device\\harddiskvolume(.*)\\program files([^\\]*)\\videolan\\vlc"
  L12_12 = L11_11(L12_12, L13_13)
  if L9_9 ~= nil and L9_9 == L11_11 and L10_10 == L12_12 and (L10_10 == "" or L10_10 == " (x86)" or L10_10 == " (arm)") then
    L13_13 = 1
    return L13_13
  end
end
if L7_7 == "installer.exe" then
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\zoom"
  L10_10 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil and L10_10 ~= nil then
    L12_12 = L8_8
    L11_11 = L8_8.match
    L13_13 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
    L12_12 = L11_11(L12_12, L13_13)
    if L9_9 == L11_11 and L10_10 == L12_12 then
      L13_13 = 1
      return L13_13
    end
  end
end
L9_9 = string
L9_9 = L9_9.sub
L10_10 = L7_7
L11_11 = 1
L12_12 = 5
L9_9 = L9_9(L10_10, L11_11, L12_12)
if L9_9 == "gimp-" then
  L9_9 = L0_0
  L10_10 = L7_7
  L11_11 = "-setup.tmp"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 then
    L10_10 = L4_4
    L9_9 = L4_4.match
    L11_11 = "^\\device\\harddiskvolume(.*)\\program files\\gimp 2"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil then
      L10_10 = 1
      return L10_10
    end
  end
end
if L7_7 == "setup.exe" or L7_7 == "un_a.exe" then
  L9_9 = skip
  L9_9 = L9_9.SCANREASON_ONOPEN
  if L2_2 == L9_9 then
    L10_10 = L4_4
    L9_9 = L4_4.match
    L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
    L10_10 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil and L10_10 ~= nil then
      L12_12 = L8_8
      L11_11 = L8_8.match
      L13_13 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
      L12_12 = L11_11(L12_12, L13_13)
      if L9_9 == L11_11 and L10_10 == L12_12 then
        L13_13 = 1
        return L13_13
      end
    else
      if L9_9 == nil then
        L12_12 = L4_4
        L11_11 = L4_4.match
        L13_13 = "^\\device\\harddiskvolume(.*)\\program files\\mozilla "
        L11_11 = L11_11(L12_12, L13_13)
        L9_9 = L11_11
      end
      if L9_9 == nil then
        L12_12 = L4_4
        L11_11 = L4_4.match
        L13_13 = "^\\device\\harddiskvolume(.*)\\program files %(x86%)\\mozilla "
        L11_11 = L11_11(L12_12, L13_13)
        L9_9 = L11_11
      end
      if L9_9 ~= nil then
        L12_12 = L8_8
        L11_11 = L8_8.match
        L13_13 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
        L12_12 = L11_11(L12_12, L13_13)
        if L9_9 == L11_11 and L12_12 ~= nil then
          L13_13 = 1
          return L13_13
        end
      end
    end
  end
end
L9_9 = L3_3
L10_10 = L7_7
L11_11 = L8_8
L9_9 = L9_9(L10_10, L11_11)
if L9_9 == true then
  L10_10 = L4_4
  L9_9 = L4_4.find
  L11_11 = "^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\packages"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
  L10_10 = L4_4
  L9_9 = L4_4.find
  L11_11 = "^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\temp\\photocache"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
  L10_10 = L4_4
  L9_9 = L4_4.find
  L11_11 = "^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\microsoft\\office"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
  L10_10 = L4_4
  L9_9 = L4_4.find
  L11_11 = "^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\microsoft\\msipc"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
  L10_10 = L4_4
  L9_9 = L4_4.find
  L11_11 = "microsoft\\cryptneturlcache\\"
  L12_12 = 1
  L13_13 = true
  L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
  if L9_9 ~= nil then
    L9_9 = 1
    return L9_9
  end
end
if L7_7 == "officeclicktorun.exe" then
  L10_10 = L8_8
  L9_9 = L8_8.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\program files\\common files\\microsoft shared\\clicktorun"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 == nil then
    L11_11 = L8_8
    L10_10 = L8_8.match
    L12_12 = "^\\device\\harddiskvolume(.*)\\program files %(x86%)\\common files\\microsoft shared\\clicktorun"
    L10_10 = L10_10(L11_11, L12_12)
    L9_9 = L10_10
  end
  if L9_9 ~= nil then
    L11_11 = L4_4
    L10_10 = L4_4.match
    L12_12 = "^\\device\\harddiskvolume(.*)\\program files\\common files\\microsoft shared\\clicktorun\\updates"
    L10_10 = L10_10(L11_11, L12_12)
    if L10_10 == nil then
      L12_12 = L4_4
      L11_11 = L4_4.match
      L13_13 = "^\\device\\harddiskvolume(.*)\\program files %(x86%)\\common files\\microsoft shared\\clicktorun\\updates"
      L11_11 = L11_11(L12_12, L13_13)
      L10_10 = L11_11
    end
    if L10_10 == nil then
      L12_12 = L4_4
      L11_11 = L4_4.match
      L13_13 = "^\\device\\harddiskvolume(.*)\\programdata\\microsoft\\clicktorun"
      L11_11 = L11_11(L12_12, L13_13)
      L10_10 = L11_11
    end
    if L10_10 == nil then
      L12_12 = L4_4
      L11_11 = L4_4.match
      L13_13 = "^\\device\\harddiskvolume(.*)\\program files\\microsoft office"
      L11_11 = L11_11(L12_12, L13_13)
      L10_10 = L11_11
    end
    if L10_10 == nil then
      L12_12 = L4_4
      L11_11 = L4_4.match
      L13_13 = "^\\device\\harddiskvolume(.*)\\program files %(x86%)\\microsoft office"
      L11_11 = L11_11(L12_12, L13_13)
      L10_10 = L11_11
    end
    if L10_10 == L9_9 then
      L11_11 = 1
      return L11_11
    end
  end
end
L9_9 = L0_0
L10_10 = L6_6
L11_11 = ".pf"
L9_9 = L9_9(L10_10, L11_11)
if L9_9 then
  if L5_5 == 4 then
    L9_9 = 1
    return L9_9
  end
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\windows\\prefetch"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil then
    L10_10 = L1_1
    L11_11 = L6_6
    L12_12 = L7_7
    L10_10 = L10_10(L11_11, L12_12)
    if L10_10 then
      L10_10 = 1
      return L10_10
    end
    L11_11 = L8_8
    L10_10 = L8_8.match
    L12_12 = "^\\device\\harddiskvolume(.*)\\windows"
    L10_10 = L10_10(L11_11, L12_12)
    if L10_10 ~= nil then
      L11_11 = 1
      return L11_11
    end
  end
end
L9_9 = L0_0
L10_10 = L6_6
L11_11 = ".log"
L9_9 = L9_9(L10_10, L11_11)
if not L9_9 then
  L9_9 = L0_0
  L10_10 = L6_6
  L11_11 = ".log1"
  L9_9 = L9_9(L10_10, L11_11)
  if not L9_9 then
    L9_9 = L0_0
    L10_10 = L6_6
    L11_11 = ".log2"
    L9_9 = L9_9(L10_10, L11_11)
    if not L9_9 then
      L9_9 = L0_0
      L10_10 = L6_6
      L11_11 = ".cat"
      L9_9 = L9_9(L10_10, L11_11)
      if not L9_9 then
        L9_9 = L0_0
        L10_10 = L6_6
        L11_11 = ".sqm"
        L9_9 = L9_9(L10_10, L11_11)
        if not L9_9 then
          L9_9 = L0_0
          L10_10 = L6_6
          L11_11 = ".etl"
          L9_9 = L9_9(L10_10, L11_11)
          if not L9_9 then
            L9_9 = L0_0
            L10_10 = L6_6
            L11_11 = ".db"
            L9_9 = L9_9(L10_10, L11_11)
            if not L9_9 then
              L9_9 = L0_0
              L10_10 = L6_6
              L11_11 = ".db3"
              L9_9 = L9_9(L10_10, L11_11)
              if not L9_9 then
                L9_9 = L0_0
                L10_10 = L6_6
                L11_11 = ".db-wal"
                L9_9 = L9_9(L10_10, L11_11)
                if not L9_9 then
                  L9_9 = L0_0
                  L10_10 = L6_6
                  L11_11 = ".db3-wal"
                  L9_9 = L9_9(L10_10, L11_11)
                  if not L9_9 then
                    L9_9 = L0_0
                    L10_10 = L6_6
                    L11_11 = ".db-journal"
                    L9_9 = L9_9(L10_10, L11_11)
                    if not L9_9 then
                      L9_9 = L0_0
                      L10_10 = L6_6
                      L11_11 = ".db3-journal"
                      L9_9 = L9_9(L10_10, L11_11)
                      if not L9_9 then
                        L9_9 = L0_0
                        L10_10 = L6_6
                        L11_11 = ".bin"
                        L9_9 = L9_9(L10_10, L11_11)
                        if not L9_9 then
                          L9_9 = L0_0
                          L10_10 = L6_6
                          L11_11 = ".dat"
                          L9_9 = L9_9(L10_10, L11_11)
                          if not L9_9 then
                            L9_9 = L0_0
                            L10_10 = L6_6
                            L11_11 = ".dmp"
                            L9_9 = L9_9(L10_10, L11_11)
                            if not L9_9 then
                              L9_9 = L0_0
                              L10_10 = L6_6
                              L11_11 = ".data"
                              L9_9 = L9_9(L10_10, L11_11)
                              if not L9_9 then
                                L9_9 = L0_0
                                L10_10 = L6_6
                                L11_11 = ".mui"
                                L9_9 = L9_9(L10_10, L11_11)
                                if not L9_9 then
                                  L9_9 = L0_0
                                  L10_10 = L6_6
                                  L11_11 = ".edb"
                                  L9_9 = L9_9(L10_10, L11_11)
                                  if not L9_9 then
                                    L9_9 = L0_0
                                    L10_10 = L6_6
                                    L11_11 = ".chk"
                                    L9_9 = L9_9(L10_10, L11_11)
                                    if not L9_9 then
                                      L9_9 = L0_0
                                      L10_10 = L6_6
                                      L11_11 = ".ini"
                                      L9_9 = L9_9(L10_10, L11_11)
                                      if not L9_9 then
                                        L9_9 = L0_0
                                        L10_10 = L6_6
                                        L11_11 = ".evtx"
                                        L9_9 = L9_9(L10_10, L11_11)
                                        if not L9_9 then
                                          L9_9 = L0_0
                                          L10_10 = L6_6
                                          L11_11 = ".manifest"
                                          L9_9 = L9_9(L10_10, L11_11)
                                          if not L9_9 then
                                            L9_9 = L0_0
                                            L10_10 = L6_6
                                            L11_11 = ".hve"
                                            L9_9 = L9_9(L10_10, L11_11)
                                            if not L9_9 then
                                              L9_9 = L0_0
                                              L10_10 = L6_6
                                              L11_11 = ".tmp.xml"
                                              L9_9 = L9_9(L10_10, L11_11)
                                              if not L9_9 then
                                                L9_9 = L0_0
                                                L10_10 = L6_6
                                                L11_11 = ".tmp.werinternalmetadata.xml"
                                                L9_9 = L9_9(L10_10, L11_11)
                                                if not L9_9 then
                                                  L9_9 = L0_0
                                                  L10_10 = L6_6
                                                  L11_11 = ".hdmp"
                                                  L9_9 = L9_9(L10_10, L11_11)
                                                  if not L9_9 then
                                                    L9_9 = L0_0
                                                    L10_10 = L6_6
                                                    L11_11 = ".dmp"
                                                    L9_9 = L9_9(L10_10, L11_11)
                                                    if not L9_9 then
                                                      L9_9 = L0_0
                                                      L10_10 = L6_6
                                                      L11_11 = ".wer"
                                                      L9_9 = L9_9(L10_10, L11_11)
                                                      if not L9_9 then
                                                        L9_9 = L0_0
                                                        L10_10 = L6_6
                                                        L11_11 = ".sdb"
                                                        L9_9 = L9_9(L10_10, L11_11)
                                                        if not L9_9 then
                                                          L9_9 = L0_0
                                                          L10_10 = L6_6
                                                          L11_11 = ".tmp.appcompat.txt"
                                                          L9_9 = L9_9(L10_10, L11_11)
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
elseif L9_9 then
  if L5_5 == 4 then
    L9_9 = skip
    L9_9 = L9_9.get_contextdata
    L10_10 = 39
    L9_9 = L9_9(L10_10)
    if not L9_9 or L9_9 == "" then
      L10_10 = 1
      return L10_10
    end
  end
  if L7_7 == "svchost.exe" and L6_6 == "gpt.ini" then
    L10_10 = L4_4
    L9_9 = L4_4.match
    L11_11 = "^\\device\\mup\\"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 then
      L9_9 = 0
      return L9_9
    end
  end
  if L7_7 == "processhacker.exe" then
    L9_9 = 0
    return L9_9
  end
  L10_10 = L8_8
  L9_9 = L8_8.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\windows\\system32"
  L9_9 = L9_9(L10_10, L11_11)
  if L9_9 == nil then
    L11_11 = L8_8
    L10_10 = L8_8.match
    L12_12 = "^\\\\%?\\volume{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\windows\\system32"
    L10_10 = L10_10(L11_11, L12_12)
    L9_9 = L10_10
  end
  if L9_9 ~= nil then
    L10_10 = 1
    return L10_10
  end
end
if L7_7 == "firefox.exe" then
  L10_10 = L4_4
  L9_9 = L4_4.match
  L11_11 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\([^\\]*)\\mozilla\\firefox"
  L11_11 = L9_9(L10_10, L11_11)
  if L9_9 ~= nil and L10_10 ~= nil and L11_11 ~= nil then
    L12_12 = 1
    return L12_12
  end
  L13_13 = L8_8
  L12_12 = L8_8.match
  L14_14 = "^\\device\\harddiskvolume(.*)\\program files\\mozilla firefox"
  L12_12 = L12_12(L13_13, L14_14)
  L9_9 = L12_12
  if L9_9 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\program files\\mozilla firefox"
    L12_12 = L12_12(L13_13, L14_14)
    L9_9 = L12_12
    if L9_9 ~= nil then
      L12_12 = 1
      return L12_12
    end
    L12_12 = L0_0
    L13_13 = L6_6
    L14_14 = ".mui"
    L12_12 = L12_12(L13_13, L14_14)
    if not L12_12 then
      L12_12 = L0_0
      L13_13 = L6_6
      L14_14 = ".ttf"
      L12_12 = L12_12(L13_13, L14_14)
      if not L12_12 then
        L12_12 = L0_0
        L13_13 = L6_6
        L14_14 = ".icm"
        L12_12 = L12_12(L13_13, L14_14)
        if not L12_12 then
          L12_12 = L0_0
          L13_13 = L6_6
          L14_14 = ".db"
          L12_12 = L12_12(L13_13, L14_14)
          if not L12_12 then
            L12_12 = L0_0
            L13_13 = L6_6
            L14_14 = ".bin"
            L12_12 = L12_12(L13_13, L14_14)
          end
        end
      end
    elseif L12_12 then
      L12_12 = 1
      return L12_12
    end
  end
end
L9_9 = string
L9_9 = L9_9.find
L10_10 = L7_7
L11_11 = "."
L12_12 = 1
L13_13 = true
L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
if L9_9 == nil and (L7_7 == "cp" or L7_7 == "dash" or L7_7 == "node" or L7_7 == "npm" or L7_7 == "grep" or L7_7 == "cat" or L7_7 == "dpkg" or L7_7 == "dpkg-query" or L7_7 == "sudo" or L7_7 == "apt" or L7_7 == "store" or L7_7 == "apt-extracttemplates" or L7_7 == "perl" or L7_7 == "systemd-hwdb" or L7_7 == "ldconfig" or L7_7 == "update-alternatives") then
  L11_11 = L4_4
  L10_10 = L4_4.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs"
  L12_12 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil and L12_12 ~= nil then
    L14_14 = L8_8
    L13_13 = L8_8.match
    L15_15 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\usr\\bin"
    L15_15 = L13_13(L14_14, L15_15)
    if L15_15 == nil then
      L13_13, L14_14, L15_15 = L8_8:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\bin")
    end
    if L10_10 == L13_13 and L11_11 == L14_14 and L12_12 == L15_15 then
      return 1
    end
  end
end
if L7_7 == "firefox.exe" or L7_7 == "gimp-2.8.exe" or L7_7 == "soffice.bin" or L7_7 == "chrome.exe" then
  L11_11 = L4_4
  L10_10 = L4_4.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\chops\\dlc\\([^\\]*)\\"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L8_8
    L12_12 = L8_8.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\chops\\dlc\\([^\\]*)\\"
    L13_13 = L12_12(L13_13, L14_14)
    if L10_10 == L12_12 or L11_11 == L13_13 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L8_8
    L14_14 = L8_8.match
    L14_14 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\tmp")
    L12_12 = L14_14
    if L12_12 == L10_10 then
      L14_14 = 1
      return L14_14
    end
  end
end
if L7_7 == "code.exe" then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\code"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code")
    L13_13 = L15_15
    L12_12 = L14_14
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\.vscode\\")
    L13_13 = L15_15
    L12_12 = L14_14
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
  end
end
if L7_7 == "code - insiders.exe" then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code insiders"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\code"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code insiders")
    L13_13 = L15_15
    L12_12 = L14_14
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\.vscode-insiders\\")
    L13_13 = L15_15
    L12_12 = L14_14
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
  end
end
if L7_7 == "rustup.exe" then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\.cargo\\bin"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\.rustup\\"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
  end
end
if L7_7 == "teams.exe" then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\teams"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\microsoft\\teams"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\teams")
    if L14_14 == L10_10 and L15_15 == L11_11 then
      return 1
    end
  end
end
if L7_7 == "dllhost.exe" then
  L10_10 = L0_0
  L11_11 = L8_8
  L12_12 = "\\windows\\system32"
  L10_10 = L10_10(L11_11, L12_12)
  if L10_10 then
    L11_11 = L4_4
    L10_10 = L4_4.match
    L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoftwindows.client.cbs_cw5n1h2txyewy\\appdata\\cachestorage"
    L11_11 = L10_10(L11_11, L12_12)
    if L10_10 ~= nil and L11_11 ~= nil then
      L12_12 = 1
      return L12_12
    end
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoftwindows.client_cw5n1h2txyewy\\appdata\\cachestorage"
    L13_13 = L12_12(L13_13, L14_14)
    L11_11 = L13_13
    L10_10 = L12_12
    if L10_10 ~= nil and L11_11 ~= nil then
      L12_12 = 1
      return L12_12
    end
  end
end
if L7_7 == "notepad.exe" then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\program files\\windowsapps\\microsoft.windowsnotepad_([^\\]*)__8wekyb3d8bbwe\\notepad\\notepad.exe$"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoft.windowsnotepad_8wekyb3d8bbwe\\localstate\\tabstate\\"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 ~= nil then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\program files\\windowsapps\\microsoft.windowsnotepad_([^\\]*)__8wekyb3d8bbwe\\notepadxamlui\\")
    if L14_14 == L10_10 and L15_15 == L11_11 then
      return 1
    end
  end
end
if L7_7 == "_conda.exe" or L7_7 == "python.exe" or L7_7 == "pythonw.exe" then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\miniconda%d"
  L11_11 = L10_10(L11_11, L12_12)
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\miniconda%d\\"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
  end
  L13_13 = L8_8
  L12_12 = L8_8.match
  L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\anaconda%d"
  L13_13 = L12_12(L13_13, L14_14)
  L11_11 = L13_13
  L10_10 = L12_12
  if L10_10 ~= nil and L11_11 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\anaconda%d\\"
    L13_13 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 and L13_13 == L11_11 then
      L14_14 = 1
      return L14_14
    end
  end
  L13_13 = L8_8
  L12_12 = L8_8.match
  L14_14 = "^\\device\\harddiskvolume(.*)\\programdata\\miniconda%d"
  L12_12 = L12_12(L13_13, L14_14)
  L10_10 = L12_12
  if L10_10 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\programdata\\miniconda%d"
    L12_12 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 then
      L13_13 = 1
      return L13_13
    end
  end
  L13_13 = L8_8
  L12_12 = L8_8.match
  L14_14 = "^\\device\\harddiskvolume(.*)\\programdata\\anaconda%d"
  L12_12 = L12_12(L13_13, L14_14)
  L10_10 = L12_12
  if L10_10 ~= nil then
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\harddiskvolume(.*)\\programdata\\anaconda%d"
    L12_12 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 then
      L13_13 = 1
      return L13_13
    end
  end
end
if L7_7 == "machinelocalwatchdog.exe" then
  L11_11 = L6_6
  L10_10 = L6_6.match
  L12_12 = "%w*"
  L10_10 = L10_10(L11_11, L12_12)
  L11_11 = nil
  if L10_10 ~= L11_11 then
    L10_10 = 1
    return L10_10
  end
end
L10_10 = "savservice.exe"
if L7_7 == L10_10 then
  L11_11 = L6_6
  L10_10 = L6_6.match
  L12_12 = "%w*"
  L10_10 = L10_10(L11_11, L12_12)
  L11_11 = nil
  if L10_10 ~= L11_11 then
    L10_10 = 1
    return L10_10
  end
end
L10_10 = "postgres.exe"
if L7_7 ~= L10_10 then
  L10_10 = "postgresinstanceagentrunnerhost.exe"
elseif L7_7 == L10_10 then
  L11_11 = L6_6
  L10_10 = L6_6.match
  L12_12 = "%w*"
  L10_10 = L10_10(L11_11, L12_12)
  L11_11 = nil
  if L10_10 ~= L11_11 then
    L10_10 = 1
    return L10_10
  end
end
L10_10 = "javaw.exe"
if L7_7 ~= L10_10 then
  L10_10 = "java.exe"
  if L7_7 ~= L10_10 then
    L10_10 = "javac.exe"
  end
elseif L7_7 == L10_10 then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\(.*)\\java\\jdk([^\\]*)\\bin"
  L12_12 = L10_10(L11_11, L12_12)
  L13_13 = nil
  if L10_10 ~= L13_13 then
    L13_13 = nil
    if L11_11 ~= L13_13 then
      L13_13 = nil
      if L12_12 ~= L13_13 then
        L14_14 = L4_4
        L13_13 = L4_4.match
        L15_15 = "^\\device\\harddiskvolume(.*)\\(.*)\\eclipse\\%d+.%d+\\"
        L14_14 = L13_13(L14_14, L15_15)
        if L13_13 == L10_10 and L14_14 == L11_11 then
          L15_15 = 1
          return L15_15
        end
        L15_15 = L4_4.match
        L15_15 = L15_15(L4_4, "^\\device\\harddiskvolume(.*)\\(.*)\\java\\gwdlso\\")
        if L15_15 == L10_10 and L15_15(L4_4, "^\\device\\harddiskvolume(.*)\\(.*)\\java\\gwdlso\\") == L11_11 then
          return 1
        end
      end
    end
  end
end
if L7_7 ~= "svchost.exe" then
  L10_10 = "lsass.exe"
  if L7_7 ~= L10_10 then
    L10_10 = "services.exe"
    if L7_7 ~= L10_10 then
      L10_10 = "taskhostw.exe"
    end
  end
elseif L7_7 == L10_10 then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\\\%?\\volume(.*)\\windows\\system32"
  L10_10 = L10_10(L11_11, L12_12)
  L11_11 = nil
  if L10_10 ~= L11_11 then
    L12_12 = L4_4
    L11_11 = L4_4.match
    L13_13 = "^\\device\\vhdharddisk(.*)\\windows"
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 == L10_10 then
      L12_12 = 1
      return L12_12
    end
    L13_13 = L4_4
    L12_12 = L4_4.match
    L14_14 = "^\\device\\vhdharddisk(.*)\\programdata"
    L12_12 = L12_12(L13_13, L14_14)
    if L12_12 == L10_10 then
      L13_13 = 1
      return L13_13
    end
    L14_14 = L4_4
    L13_13 = L4_4.match
    L15_15 = "^\\device\\harddiskvolume(.*)\\windows"
    L13_13 = L13_13(L14_14, L15_15)
    L14_14 = nil
    if L13_13 ~= L14_14 then
      L14_14 = 1
      return L14_14
    end
    L15_15 = L4_4
    L14_14 = L4_4.match
    L14_14 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\programdata")
    L15_15 = nil
    if L14_14 ~= L15_15 then
      L15_15 = 1
      return L15_15
    end
  end
end
L10_10 = "fusion360.exe"
if L7_7 == L10_10 then
  L11_11 = L8_8
  L10_10 = L8_8.match
  L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\autodesk\\webdeploy\\production"
  L11_11 = L10_10(L11_11, L12_12)
  L12_12 = nil
  if L10_10 ~= L12_12 then
    L12_12 = nil
    if L11_11 ~= L12_12 then
      L13_13 = L4_4
      L12_12 = L4_4.match
      L14_14 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\autodesk\\webdeploy\\production\\"
      L13_13 = L12_12(L13_13, L14_14)
      if L12_12 == L10_10 and L13_13 == L11_11 then
        L14_14 = 1
        return L14_14
      end
      L15_15 = L4_4
      L14_14 = L4_4.match
      L15_15 = L14_14(L15_15, "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\fusionstreamer\\")
      L13_13 = L15_15
      L12_12 = L14_14
      if L12_12 == L10_10 and L13_13 == L11_11 then
        L14_14 = 1
        return L14_14
      end
    end
  end
end
L10_10 = "irsetup.exe"
if L7_7 == L10_10 then
  L10_10 = "ultraedit setup log.txt"
  if L6_6 == L10_10 then
    L11_11 = L8_8
    L10_10 = L8_8.match
    L12_12 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\([^\\]*)"
    L12_12 = L10_10(L11_11, L12_12)
    L13_13 = nil
    if L10_10 ~= L13_13 then
      L13_13 = nil
      if L11_11 ~= L13_13 then
        L13_13 = nil
        if L12_12 ~= L13_13 then
          L14_14 = L4_4
          L13_13 = L4_4.match
          L15_15 = "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp"
          L14_14 = L13_13(L14_14, L15_15)
          if L13_13 == L10_10 and L14_14 == L11_11 then
            L15_15 = 1
            return L15_15
          end
        end
      end
    end
  end
end
L10_10 = 0
return L10_10
