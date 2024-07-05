local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = false
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 > 15000000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FULL
L4_4 = L3_3(L4_4, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4, mp.FILEPATH_QUERY_LOWERCASE))
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L4_4 = "Lua:FileInsideSystemFolder"
L3_3 = L3_3(L4_4)
if L3_3 then
  L4_4 = L2_2
  L3_3 = L2_2.find
  L3_3 = L3_3(L4_4, "\\system32\\wbem\\wbemcore.tlb", 1, true)
  if not L3_3 then
    L4_4 = L2_2
    L3_3 = L2_2.find
    L3_3 = L3_3(L4_4, "\\system32\\wbem\\wbemnet.dll", 1, true)
    if not L3_3 then
      L4_4 = L2_2
      L3_3 = L2_2.find
      L3_3 = L3_3(L4_4, "\\system32\\xwtpw.dll", 1, true)
      if not L3_3 then
        L4_4 = L2_2
        L3_3 = L2_2.find
        L3_3 = L3_3(L4_4, "\\system32\\wbem\\suyl.dll", 1, true)
        if not L3_3 then
          L4_4 = L2_2
          L3_3 = L2_2.find
          L3_3 = L3_3(L4_4, "\\system32\\wbem\\suyl.tlb", 1, true)
          if not L3_3 then
            L4_4 = L2_2
            L3_3 = L2_2.find
            L3_3 = L3_3(L4_4, "\\system32\\explorerf.dll", 1, true)
            if not L3_3 then
              L4_4 = L2_2
              L3_3 = L2_2.find
              L3_3 = L3_3(L4_4, "\\system32\\wpdsh.dll", 1, true)
              if not L3_3 then
                L4_4 = L2_2
                L3_3 = L2_2.find
                L3_3 = L3_3(L4_4, "\\system32\\wbem\\sppext.tlb", 1, true)
                if not L3_3 then
                  L4_4 = L2_2
                  L3_3 = L2_2.find
                  L3_3 = L3_3(L4_4, "\\system32\\wbem\\mstscax.tlb", 1, true)
                end
              end
            end
          end
        end
      end
    end
  elseif L3_3 then
    L0_0 = true
  end
else
  L3_3 = mp
  L3_3 = L3_3.get_mpattribute
  L4_4 = "Lua:FileInsideProgramDataFolder"
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L4_4 = L2_2
    L3_3 = L2_2.find
    L3_3 = L3_3(L4_4, "programdata\\microsoft\\windows\\spasetup32.uce", 1, true)
    if not L3_3 then
      L4_4 = L2_2
      L3_3 = L2_2.find
      L3_3 = L3_3(L4_4, "programdata\\microsoft\\windows\\spasetup64.uce", 1, true)
      if not L3_3 then
        L4_4 = L2_2
        L3_3 = L2_2.find
        L3_3 = L3_3(L4_4, "programdata\\microsoft\\windows\\spasetup.uce", 1, true)
        if not L3_3 then
          L4_4 = L2_2
          L3_3 = L2_2.find
          L3_3 = L3_3(L4_4, "programdata\\microsoft\\windows\\caches\\comobj.uce", 1, true)
        end
      end
    elseif L3_3 then
      L0_0 = true
    end
  end
end
if L0_0 then
  L3_3 = sysio
  L3_3 = L3_3.RegOpenKey
  L4_4 = "HKLM\\SOFTWARE\\Microsoft\\Cryptography"
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    L4_4 = sysio
    L4_4 = L4_4.GetRegValueAsString
    L4_4 = L4_4(L3_3, "MachineGuid")
    if L4_4 ~= nil then
      mp.set_mpattribute(string.format("MpInternal_researchdata=CryptoMachineGuid=%s", L4_4))
    end
  end
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L4_4("MpNonPIIFileType")
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
