local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "5beb7efe-fd9a-4556-801d-275e5ffc04cc"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_FULL
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "RPF:TopLevelFile"
L1_1 = L1_1(L2_2)
if L1_1 == false then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\appdata\\local\\temp\\"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = false
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "SCPT:ObfuscatedScriptAsrTestSample"
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "SCPT:PS:ReflectiveInject"
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.get_mpattribute
    L3_3 = "AsrMatch5beb7efe"
    L2_2 = L2_2(L3_3)
    if not L2_2 then
      L2_2 = mp
      L2_2 = L2_2.get_mpattribute
      L3_3 = "ALF:Script/ObfusSingleJsInZipMsit.B"
      L2_2 = L2_2(L3_3)
      if not L2_2 then
        L2_2 = mp
        L2_2 = L2_2.get_mpattribute
        L3_3 = "ALF:Script/ObfusSingleJsInZipMsit.A"
        L2_2 = L2_2(L3_3)
        if not L2_2 then
          L2_2 = mp
          L2_2 = L2_2.get_mpattribute
          L3_3 = "SLF:Script/VbsInMotw.B"
          L2_2 = L2_2(L3_3)
          if not L2_2 then
            L2_2 = mp
            L2_2 = L2_2.get_mpattribute
            L3_3 = "SLF:Script/VbsInMotw.A"
            L2_2 = L2_2(L3_3)
            if not L2_2 then
              L2_2 = mp
              L2_2 = L2_2.get_mpattribute
              L3_3 = "SLF:Script/JsInMotw.B"
              L2_2 = L2_2(L3_3)
              if not L2_2 then
                L2_2 = mp
                L2_2 = L2_2.get_mpattribute
                L3_3 = "SLF:Script/JsInMotw.A"
                L2_2 = L2_2(L3_3)
              end
            end
          end
        end
      elseif L2_2 then
        L2_2 = mp
        L2_2 = L2_2.get_mpattribute
        L3_3 = "Lua:MsitOrg"
        L2_2 = L2_2(L3_3)
      end
    end
  end
elseif L2_2 then
  L1_1 = true
end
L2_2 = false
L3_3 = false
if L1_1 == false then
  L4_4 = mp
  L4_4 = L4_4.get_mpattribute
  L5_5 = "Nscript:Type_js"
  L4_4 = L4_4(L5_5)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_mpattribute
    L5_5 = "Nscript:Type_vbs"
    L4_4 = L4_4(L5_5)
    if not L4_4 then
      L4_4 = mp
      L4_4 = L4_4.get_mpattribute
      L5_5 = "Nscript:Type_ps"
      L4_4 = L4_4(L5_5)
      if not L4_4 then
        L4_4 = mp
        L4_4 = L4_4.get_mpattribute
        L5_5 = "Lua:JSExt"
        L4_4 = L4_4(L5_5)
        if not L4_4 then
          L4_4 = mp
          L4_4 = L4_4.get_mpattribute
          L5_5 = "Lua:VBSExt"
          L4_4 = L4_4(L5_5)
          if not L4_4 then
            L4_4 = mp
            L4_4 = L4_4.get_mpattribute
            L5_5 = "Lua:PS1Ext"
            L4_4 = L4_4(L5_5)
            if not L4_4 then
              L4_4 = mp
              L4_4 = L4_4.get_mpattribute
              L5_5 = "LUA:WSFExt"
              L4_4 = L4_4(L5_5)
              if not L4_4 then
                L4_4 = mp
                L4_4 = L4_4.CLEAN
                return L4_4
              end
            end
          end
        end
      end
    end
  end
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_FILENAME
  L4_4 = L4_4(L5_5)
  if L4_4 == nil or L4_4 == "" then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
  L5_5 = string
  L5_5 = L5_5.match
  L6_6 = L4_4
  L5_5 = L5_5(L6_6, "(%.[^%.]+)$")
  if L5_5 == ".psd1" or L5_5 == ".psm1" or L5_5 == ".ps1xml" or L5_5 == ".psrc" or L5_5 == ".pssc" or L5_5 == ".cdxml" or L5_5 == ".testpasses" then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  if L5_5 == ".ps1" then
    L2_2 = true
  end
  L6_6 = mp
  L6_6 = L6_6.get_contextdata
  L6_6 = L6_6(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L6_6 == true then
    L6_6 = mp
    L6_6 = L6_6.GetMOTWZone
    L6_6 = L6_6()
    if L6_6 == 3 then
      L3_3 = true
    end
  end
  L6_6 = mp
  L6_6 = L6_6.get_mpattribute
  L6_6 = L6_6("RPF:TobeetJs:Probability")
  if not L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.get_mpattributevalue
  L6_6 = L6_6("RPF:TobeetJs:Probability")
  if L6_6 ~= nil then
    if L2_2 == false and L3_3 == false and L6_6 >= 95 then
      L1_1 = true
    end
    if L2_2 == false and L3_3 == true and L6_6 >= 90 then
      L1_1 = true
    end
    if L2_2 == true and L3_3 == false and L6_6 >= 99 then
      L1_1 = true
    end
    if L2_2 == true and L3_3 == true and L6_6 >= 95 then
      L1_1 = true
    end
  end
end
if L1_1 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.IsTrustedFile
L5_5 = false
L5_5 = L4_4(L5_5)
if L4_4 == true then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.IsPathExcludedForHipsRule
L6_6 = L6_6(L0_0, "5beb7efe-fd9a-4556-801d-275e5ffc04cc")
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.find
L6_6 = L6_6(L0_0, "\\appdata\\roaming\\microsoft\\office\\16.0\\[^\\]+\\proofing\\")
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
else
  L6_6 = string
  L6_6 = L6_6.find
  L6_6 = L6_6(L0_0, "\\appdata\\roaming\\microsoft\\office\\recent\\index.dat", 1, true)
  if L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  else
    L6_6 = string
    L6_6 = L6_6.find
    L6_6 = L6_6(L0_0, "\\program files[^\\]*\\microsoft office\\root\\office%d+\\")
    if L6_6 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    else
      L6_6 = string
      L6_6 = L6_6.find
      L6_6 = L6_6(L0_0, "\\windows\\imecache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs")
      if L6_6 then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      else
        L6_6 = string
        L6_6 = L6_6.find
        L6_6 = L6_6(L0_0, "\\windows\\ccmcache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs")
        if L6_6 then
          L6_6 = mp
          L6_6 = L6_6.CLEAN
          return L6_6
        else
          L6_6 = string
          L6_6 = L6_6.find
          L6_6 = L6_6(L0_0, "\\windowspowershell\\v1.0\\modules\\", 1, true)
          if L6_6 then
            L6_6 = mp
            L6_6 = L6_6.CLEAN
            return L6_6
          else
            L6_6 = string
            L6_6 = L6_6.find
            L6_6 = L6_6(L0_0, "\\eceagentservice\\[^\\]+\\[^\\]+%.psd1$")
            if L6_6 then
              L6_6 = mp
              L6_6 = L6_6.CLEAN
              return L6_6
            else
              L6_6 = string
              L6_6 = L6_6.find
              L6_6 = L6_6(L0_0, "\\tanium\\tanium client\\tools\\endusernotifications\\", 1, true)
              if L6_6 then
                L6_6 = mp
                L6_6 = L6_6.CLEAN
                return L6_6
              else
                L6_6 = string
                L6_6 = L6_6.find
                L6_6 = L6_6(L0_0, "\\tanium\\tanium client\\tools\\enforce\\", 1, true)
                if L6_6 then
                  L6_6 = mp
                  L6_6 = L6_6.CLEAN
                  return L6_6
                else
                  L6_6 = string
                  L6_6 = L6_6.find
                  L6_6 = L6_6(L0_0, "\\tanium\\tanium client\\downloads\\action_[^\\]+\\[^\\]+%.vbs$")
                  if L6_6 then
                    L6_6 = mp
                    L6_6 = L6_6.CLEAN
                    return L6_6
                  else
                    L6_6 = string
                    L6_6 = L6_6.find
                    L6_6 = L6_6(L0_0, "\\sar\\rules\\[^\\]+\\rulefiles\\lib\\[^\\]+%.vbs$")
                    if L6_6 then
                      L6_6 = mp
                      L6_6 = L6_6.CLEAN
                      return L6_6
                    else
                      L6_6 = versioning
                      L6_6 = L6_6.GetOrgID
                      L6_6 = L6_6()
                      if L6_6 ~= nil and L6_6 ~= "" then
                        L6_6 = string.lower(L6_6)
                        if (L6_6 == "cd568033-6cdd-4daf-9263-45f282f27ae9" or L6_6 == "ccf4632d-a216-4a0a-88ec-332cacb9ccfc" or L6_6 == "84de09f9-73cb-4ba3-9eb5-c44b04ecaefd") and string.find(L0_0, "\\appdata\\local\\temp\\mxescr%d+%.vbs$") then
                          return mp.CLEAN
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
L6_6 = mp
L6_6 = L6_6.set_mpattribute
L6_6("MpDisableCaching")
L6_6 = mp
L6_6 = L6_6.get_contextdata
L6_6 = L6_6(mp.CONTEXT_DATA_SCANREASON)
if L6_6 == mp.SCANREASON_ONOPEN then
  L6_6 = string
  L6_6 = L6_6.find
  L6_6 = L6_6(L0_0, ">%[msilres")
  if L6_6 then
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6("LUA:InsideMSILRES")
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.get_mpattribute
  L6_6 = L6_6("LUA:InsideMSILRES")
  if L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.get_contextdata
  L6_6 = L6_6(mp.CONTEXT_DATA_PROCESSNAME)
  if L6_6 == nil or L6_6 == "" then
    return mp.CLEAN
  end
  L6_6 = string.lower(L6_6)
  if ({
    ["cscript.exe"] = true,
    ["wscript.exe"] = true,
    ["winword.exe"] = true,
    ["powerpnt.exe"] = true,
    ["excel.exe"] = true,
    ["powershell.exe"] = true
  })[L6_6] == true then
    if L6_6 == "powershell.exe" then
      if L2_2 then
        return mp.INFECTED
      end
    else
      return mp.INFECTED
    end
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
