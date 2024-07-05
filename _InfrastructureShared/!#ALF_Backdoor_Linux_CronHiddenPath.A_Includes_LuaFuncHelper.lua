local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4
}
L1_1 = "/etc/cron."
L2_2 = "/etc/crontab"
L3_3 = "/var/spool/cron/crontabs"
L4_4 = "/var/spool/cron"
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.getfilesize
  L2_2 = L2_2()
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L4_4 = mp
  L4_4 = L4_4.bitor
  L20_20 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L4_4(L5_5, L6_6))
  if L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.len
    L4_4 = L4_4(L5_5)
    if L4_4 < 10 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = false
    for L8_8, L9_9 in L5_5(L6_6) do
      L10_10 = string
      L10_10 = L10_10.find
      L14_14 = true
      L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
      if L10_10 == 1 then
        L10_10 = ""
        if L2_2 <= L11_11 then
          L10_10 = L11_11
        elseif L2_2 <= L11_11 then
          L10_10 = L11_11 .. L12_12
        else
          L11_11(L12_12)
          L14_14 = L2_2
          L20_20 = L12_12(L13_13, L14_14)
          L10_10 = L11_11
          L11_11(L12_12)
        end
        if L10_10 ~= nil then
          L14_14 = "\n"
          L20_20 = L12_12(L13_13, L14_14)
          for L14_14, L15_15 in L11_11(L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L12_12(L13_13, L14_14)) do
            if L15_15 ~= nil and L15_15 ~= "" then
              L19_19 = 1
              L20_20 = true
              if L16_16 ~= 1 then
                if L16_16 then
                  L19_19 = ""
                  L15_15 = L16_16
                  L19_19 = " "
                  L20_20 = L17_17(L18_18, L19_19)
                  for L19_19, L20_20 in L16_16(L17_17, L18_18, L19_19, L20_20, L17_17(L18_18, L19_19)) do
                    if type(L20_20) == "string" and L20_20:sub(1, 1) == "/" and sysio.IsFileExists(L20_20) then
                      L4_4 = true
                      mp.ReportLowfi(L20_20, 34864475)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if L4_4 then
      return L5_5
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
