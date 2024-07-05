local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "BM_PDF_FILE"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "MpInternal_IsPliScan"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "MpAlwaysLowfiMatch"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Lua:Guid.1"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattribute
        L1_1 = "//Lua:ContextFromWebmail"
        L0_0 = L0_0(L1_1)
        if not L0_0 then
          L0_0 = mp
          L0_0 = L0_0.get_mpattribute
          L1_1 = "//Lua:ContextualDropFileByEmailClient"
          L0_0 = L0_0(L1_1)
          if not L0_0 then
            L0_0 = mp
            L0_0 = L0_0.GetBruteMatchData
            L0_0 = L0_0()
            L1_1 = L0_0.match_offset
            L1_1 = L1_1 + 1
            L2_2 = 128
            L3_3 = ""
            if L0_0.is_header then
              L3_3 = tostring(headerpage):sub(L1_1, L1_1 + L2_2)
            else
              L3_3 = tostring(footerpage):sub(L1_1, L1_1 + L2_2)
            end
            if L3_3:find("http", 1, true) ~= nil then
              L3_3 = L3_3:sub(L3_3:find("http", 1, true) - 3, L2_2 - L3_3:find("http", 1, true))
              if L3_3:find(")", 1, true) ~= nil then
                mp.vfo_add_buffer(L3_3:sub(1, L3_3:find(")", 1, true) - 1), "[pdfuri2rdata]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
