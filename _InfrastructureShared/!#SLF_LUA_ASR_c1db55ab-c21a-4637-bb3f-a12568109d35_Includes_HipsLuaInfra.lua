local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 ~= true then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
else
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 == L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
    L1_1 = L1_1(L2_2)
    if L1_1 ~= true then
      L1_1 = mp
      L1_1 = L1_1.bitand
      L2_2 = mp
      L2_2 = L2_2.get_contextdata
      L3_3 = mp
      L3_3 = L3_3.CONTEXT_DATA_DESIREDACCESS
      L2_2 = L2_2(L3_3)
      L3_3 = 32
      L1_1 = L1_1(L2_2, L3_3)
      if L1_1 ~= 32 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = peattributes
L1_1 = L1_1.isexe
if L1_1 ~= true then
  L1_1 = peattributes
  L1_1 = L1_1.isdll
  if L1_1 ~= true then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 < 256 or L1_1 > 50331648 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "HSTR:AggressiveRansomScoping"
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "Lua:InitDataToCodeRatio"
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.get_mpattribute
    L3_3 = "Lua:RsrcDataToCodeRatio"
    L2_2 = L2_2(L3_3)
    if not L2_2 then
      L2_2 = peattributes
      L2_2 = L2_2.dynmem_APIcall
      L2_2 = not L2_2
      if L2_2 == true then
        L2_2 = peattributes
        L2_2 = L2_2.dynmem_checks_if_debugged_doc
        L2_2 = not L2_2
        if L2_2 == true then
          L2_2 = peattributes
          L2_2 = L2_2.dynmem_checks_if_debugged_undoc
          L2_2 = not L2_2
          if L2_2 == true then
            L2_2 = peattributes
            L2_2 = L2_2.dynmem_detects_virtualpc
            L2_2 = not L2_2
            if L2_2 == true then
              L2_2 = peattributes
              L2_2 = L2_2.dynmem_detects_vm
              L2_2 = not L2_2
              if L2_2 == true then
                L2_2 = peattributes
                L2_2 = L2_2.dynmem_detects_vmware
                L2_2 = not L2_2
                if L2_2 == true then
                  L2_2 = peattributes
                  L2_2 = L2_2.dynmem_kernel_scan
                  L2_2 = not L2_2
                  if L2_2 == true then
                    L2_2 = peattributes
                    L2_2 = L2_2.dynmem_reads_vdll_code
                    L2_2 = not L2_2
                    if L2_2 == true then
                      L2_2 = peattributes
                      L2_2 = L2_2.dynmem_self_modifying_code
                      L2_2 = not L2_2
                      if L2_2 == true then
                        L2_2 = peattributes
                        L2_2 = L2_2.executes_from_dynamic_memory
                        L2_2 = not L2_2
                        if L2_2 == true then
                          L2_2 = mp
                          L2_2 = L2_2.CLEAN
                          return L2_2
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
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FULL
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L11_11 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L3_3(L4_4, L5_5))
if L2_2 ~= nil and L2_2 ~= "" then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = MpCommon
  L4_4 = L4_4.PathToWin32Path
  L5_5 = L2_2
  L11_11 = L4_4(L5_5)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L4_4(L5_5))
  L2_2 = L3_3
  L3_3 = mp
  L3_3 = L3_3.IsPathExcludedForHipsRule
  L4_4 = L2_2
  L5_5 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L5_5 = ".:\\windows\\installer\\[^\\]+%.tmp$"
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L5_5 = ".:\\windows\\assembly\\nativeimages_[^\\]+\\[^\\]+\\[0-9a-f]+\\[^\\]+%.ni%.dll$"
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L5_5 = ".:\\program files[^\\]*\\notepad%+%+\\"
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L5_5 = ".:\\program files[^\\]*\\eporezna\\eporeznachromesupportfiles\\"
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.IsTrustedFile
L4_4 = false
L4_4 = L3_3(L4_4)
if L3_3 == true then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = false
while true do
  L6_6 = {}
  L6_6["RPF:ApiCallsClassifier.Probability"] = true
  L6_6["RPF:Gamorthic_Classifier"] = true
  L6_6["RPF:MsilRoutineLenClassifier"] = true
  L6_6["RPF:PEATTR_SIGATTR:PREDICT:30"] = true
  L6_6["RPF:PEATTR_SIGATTR:PREDICT:40"] = true
  L6_6["RPF:PEATTR_SIGATTR:PREDICT:50"] = true
  L6_6["RPF:PEATTR_SIGATTR:PREDICT:70"] = true
  L6_6["RPF:PEATTR_SIGATTR:PREDICT:90"] = true
  L6_6["RPF:VBKcrcLenClassifier"] = true
  for L10_10, L11_11 in L7_7(L8_8) do
    if L11_11 == true and mp.get_mpattribute(L10_10) == true then
      L5_5 = true
      break
    end
  end
  if L5_5 then
    break
  end
  L7_7["Lua:Context7ZipExtracted.A"] = true
  L7_7["Lua:Context7ZipExtracted.B"] = true
  L7_7["Lua:ContextCmdAccessTIF.A"] = true
  L7_7["Lua:ContextCmdDropTIF.A"] = true
  L7_7["Lua:ContextControlAccessTemp.A"] = true
  L7_7["Lua:ContextControlAccessTIF.A"] = true
  L7_7["Lua:ContextEKAcroRdDrop"] = true
  L7_7["Lua:ContextEKAcroRdDropTest"] = true
  L7_7["Lua:ContextEKExplorerDrop"] = true
  L7_7["Lua:ContextEKExplorerDropTest"] = true
  L7_7["Lua:ContextEKFirefoxDrop"] = true
  L7_7["Lua:ContextEKFirefoxDropTest"] = true
  L7_7["Lua:ContextEKIEDrop"] = true
  L7_7["Lua:ContextEKIEDropTest"] = true
  L7_7["Lua:ContextEKJavaDrop"] = true
  L7_7["Lua:ContextEKJavaDropTest"] = true
  L7_7["Lua:ContextEKOperaDrop"] = true
  L7_7["Lua:ContextEKOperaDropTest"] = true
  L7_7["Lua:ContextEKOtherDrop"] = true
  L7_7["Lua:ContextEKOtherDropTest"] = true
  L7_7["Lua:ContextExplorerZIPExtracted.A"] = true
  L7_7["Lua:ContextFileNameBtvstack.A"] = true
  L7_7["Lua:ContextIRSetupExtracted.A"] = true
  L7_7["Lua:ContextRegsvr32AccessTemp.A"] = true
  L7_7["Lua:ContextRegsvr32AccessTIF.A"] = true
  L7_7["Lua:ContextScriptTempDll.A"] = true
  L7_7["Lua:ContextScriptTempExe.A"] = true
  L7_7["Lua:ContextualDropIELocalLow"] = true
  L7_7["Lua:ContextualDropMsiexecKB.A"] = true
  L7_7["Lua:ContextualDropOperaTemp"] = true
  L7_7["Lua:ContextualDropPlugincontainerTemp"] = true
  L7_7["Lua:ContextualDropSvchostTemp"] = true
  L7_7["Lua:ContextualDropSvchostTemp.B"] = true
  L7_7["Lua:ContextualDropTmpExe.A"] = true
  L7_7["Lua:ContextualDropVmhostTemp"] = true
  L7_7["Lua:ContextWinRARExtracted.A"] = true
  L7_7["Lua:ContextWinZipExtracted.A"] = true
  for L11_11, _FORV_12_ in L8_8(L9_9) do
    if _FORV_12_ == true and mp.get_mpattribute(L11_11) == true then
      L5_5 = true
      break
    end
  end
  if L5_5 then
    break
  end
  L8_8["cmd.exe"] = true
  L8_8["cscript.exe"] = true
  L8_8["java.exe"] = true
  L8_8["javaw.exe"] = true
  L8_8["mshta.exe"] = true
  L8_8["powershell.exe"] = true
  L8_8["rundll32.exe"] = true
  L8_8["wscript.exe"] = true
  if L9_9 == nil then
  else
  end
  L11_11 = L10_10
  if L10_10 == true then
    L5_5 = true
  end
  break
end
if L5_5 == true then
  L6_6 = mp
  L6_6 = L6_6.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 == L6_6 then
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6(L7_7)
    L6_6 = mp
    L6_6 = L6_6.INFECTED
    return L6_6
  else
    L6_6 = mp
    L6_6 = L6_6.get_mpattribute
    L6_6 = L6_6(L7_7)
    if L6_6 then
      L6_6 = mp
      L6_6 = L6_6.SetHipsRule
      L6_6(L7_7)
      L6_6 = mp
      L6_6 = L6_6.BLOCKEXECUTION
      return L6_6
    end
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6(L7_7)
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
