local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.getfilename
    L3_3 = mp
    L3_3 = L3_3.bitor
    L4_4 = mp
    L4_4 = L4_4.bitor
    L5_5 = mp
    L5_5 = L5_5.FILEPATH_QUERY_FNAME
    L4_4 = L4_4(L5_5, mp.FILEPATH_QUERY_PATH)
    L5_5 = mp
    L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
    L5_5 = L3_3(L4_4, L5_5)
    L3_3 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4, L5_5))
    if L3_3 == nil or L2_2 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    if L3_3 == "amsi.dll" then
      L4_4 = string
      L4_4 = L4_4.lower
      L5_5 = mp
      L5_5 = L5_5.get_contextdata
      L5_5 = L5_5(mp.CONTEXT_DATA_PROCESSNAME)
      L4_4 = L4_4(L5_5, L5_5(mp.CONTEXT_DATA_PROCESSNAME))
      L5_5 = L4_4.match
      L5_5 = L5_5(L4_4, "(.*).exe")
      if L5_5:find("rufus", 1, true) then
        L5_5 = "rufus"
      end
      if L5_5:find("recover", 1, true) then
        L5_5 = "recovery"
      end
      mp.set_mpattribute("Lua:AmsiDll!" .. L5_5)
      if mp.IsTrustedFile() then
        mp.set_mpattribute("Lua:AmsiDllTrusted")
      else
        mp.set_mpattribute("Lua:AmsiDllNotTrusted")
      end
      if not L2_2:find("\\device\\harddiskvolume", 1, true) and not L2_2:find(":\\windows\\winsxs\\", 1, true) then
        if L2_2:find(":\\windows\\system32\\", 1, true) or L2_2:find(":\\windows\\syswow64", 1, true) then
          mp.set_mpattribute("Lua:AmsiDllInKnownLocation")
        else
          mp.set_mpattribute("Lua:AmsiDllInNonStandardLocation")
        end
      end
      if not mp.get_mpattribute("BM_MZ_FILE") then
        mp.set_mpattribute("Lua:AmsiDllIsNonPE")
      end
      if L1_1 < 10240 or L1_1 > 204800 then
        mp.set_mpattribute("Lua:AmsiDllIsNonStandardSize")
        if L1_1 == 0 then
          mp.set_mpattribute("Lua:AmsiDllZeroFileSize")
        end
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
