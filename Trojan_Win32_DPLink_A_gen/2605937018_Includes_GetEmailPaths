local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:PowerShell"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "SCRIPT:WmicString"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "SCRIPT:BitsadminString"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "SCRIPT:MsWorkflowCompilerString"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattribute
        L1_1 = "SCRIPT:MshtaString"
        L0_0 = L0_0(L1_1)
        if not L0_0 then
          L0_0 = mp
          L0_0 = L0_0.get_mpattribute
          L1_1 = "SCRIPT:CertutilString"
          L0_0 = L0_0(L1_1)
          if not L0_0 then
            L0_0 = mp
            L0_0 = L0_0.get_mpattribute
            L1_1 = "SCRIPT:CmstpString"
            L0_0 = L0_0(L1_1)
            if not L0_0 then
              L0_0 = mp
              L0_0 = L0_0.get_mpattribute
              L1_1 = "SCRIPT:CscString"
              L0_0 = L0_0(L1_1)
              if not L0_0 then
                L0_0 = mp
                L0_0 = L0_0.get_mpattribute
                L1_1 = "SCRIPT:CmdkeyString"
                L0_0 = L0_0(L1_1)
                if not L0_0 then
                  L0_0 = mp
                  L0_0 = L0_0.get_mpattribute
                  L1_1 = "SCRIPT:SchtasksString"
                  L0_0 = L0_0(L1_1)
                  if not L0_0 then
                    L0_0 = mp
                    L0_0 = L0_0.get_mpattribute
                    L1_1 = "SCRIPT:StringCmdExe"
                    L0_0 = L0_0(L1_1)
                    if not L0_0 then
                      L0_0 = mp
                      L0_0 = L0_0.CLEAN
                      return L0_0
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
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L3_3 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.len
  L1_1 = L1_1(L2_2)
  if L1_1 > 18 then
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -18
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 == ".settingcontent-ms" then
      L1_1 = mp
      L1_1 = L1_1.get_contextdata
      L2_2 = mp
      L2_2 = L2_2.CONTEXT_DATA_SCANREASON
      L1_1 = L1_1(L2_2)
      L2_2 = {}
      L2_2["outlook.exe"] = ""
      L2_2["iexplore.exe"] = ""
      L2_2["browser_broker.exe"] = ""
      L2_2["firefox.exe"] = ""
      L2_2["chrome.exe"] = ""
      L2_2["winword.exe"] = ""
      L2_2["powerpnt.exe"] = ""
      L2_2["excel.exe"] = ""
      L2_2["acrord32.exe"] = ""
      L3_3 = string
      L3_3 = L3_3.lower
      L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
      if (L2_2[L3_3] or isOutlookProcess(L3_3)) and L1_1 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
        return mp.INFECTED
      end
      if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and L1_1 == mp.SCANREASON_ONOPEN and (mp.GetMOTWZone() == 3 or mp.GetMOTWZone() == 4) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
