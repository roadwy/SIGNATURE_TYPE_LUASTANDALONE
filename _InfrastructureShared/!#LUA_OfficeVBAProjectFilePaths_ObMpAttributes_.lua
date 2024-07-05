local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.bitor
  L2_2 = mp
  L2_2 = L2_2.bitor
  L3_3 = mp
  L3_3 = L3_3.FILEPATH_QUERY_FNAME
  L4_4 = mp
  L4_4 = L4_4.FILEPATH_QUERY_PATH
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = mp
  L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
  L4_4 = L1_1(L2_2, L3_3)
  L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3))
  if L0_0 ~= nil then
    L3_3 = L0_0
    L2_2 = L0_0.len
    L2_2 = L2_2(L3_3)
    if L2_2 > 12 and L1_1 ~= nil then
      L3_3 = L1_1
      L2_2 = L1_1.find
      L4_4 = "/vbaproject.bin"
      L2_2 = L2_2(L3_3, L4_4)
      if L2_2 then
        L2_2 = ""
        L4_4 = L0_0
        L3_3 = L0_0.find
        L3_3 = L3_3(L4_4, "\\downloads", 1, true)
        if not L3_3 then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
        L4_4 = L0_0
        L3_3 = L0_0.find
        L3_3 = L3_3(L4_4, "\\users\\[^\\]+\\downloads")
        if L3_3 == nil then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
        L4_4 = L0_0
        L3_3 = L0_0.sub
        L3_3 = L3_3(L4_4, -10)
        if L3_3 == "\\downloads" then
          L2_2 = "Lua:VbaProjectWrittenToDownloadFolder"
        else
          L4_4 = L0_0
          L3_3 = L0_0.find
          L3_3 = L3_3(L4_4, "\\downloads\\[^\\]+$")
          if L3_3 ~= nil then
            L2_2 = "Lua:VbaProjectWrittenToDownloadFolder1Sub"
          else
            L3_3 = mp
            L3_3 = L3_3.CLEAN
            return L3_3
          end
        end
        L3_3 = mp
        L3_3 = L3_3.get_contextdata
        L4_4 = mp
        L4_4 = L4_4.CONTEXT_DATA_NEWLYCREATEDHINT
        L3_3 = L3_3(L4_4)
        if L3_3 == true then
          L3_3 = mp
          L3_3 = L3_3.set_mpattribute
          L4_4 = L2_2
          L3_3(L4_4)
          L3_3 = mp
          L3_3 = L3_3.INFECTED
          return L3_3
        end
        L3_3 = {}
        L3_3["excel.exe"] = true
        L3_3["winword.exe"] = true
        L4_4 = mp
        L4_4 = L4_4.get_contextdata
        L4_4 = L4_4(mp.CONTEXT_DATA_PROCESSNAME)
        L4_4 = (L4_4 == nil and "" or L4_4):lower()
        if L3_3[L4_4] ~= true then
          L2_2 = L2_2 .. "NotbyOffice"
          mp.set_mpattribute(L2_2)
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
