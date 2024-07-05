local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27
function L0_0(A0_28, A1_29, A2_30)
  local L3_31, L4_32
  L3_31 = 0
  L4_32 = {}
  while A2_30 > L3_31 do
    L4_32[#L4_32 + 1] = string.char(string.byte(A0_28, A1_29 + L3_31))
    L3_31 = L3_31 + 2
  end
  return (table.concat(L4_32, ""))
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = {}
    L1_1.ucbrowserupdatercore = true
    L1_1.hpceescheduleforwalk2 = true
    L1_1.hpceescheduleforhp = true
    L1_1["hpceescheduleforbid-n-buy"] = true
    L1_1.hpceescheduleformajas = true
    L1_1.dropboxupdatetaskmachineua = true
    L1_1["adobe flash player updater"] = true
    L1_1["msi task host - ledkeeper2_host"] = true
    L1_1.ss1collectservertask = true
    L2_2 = 0
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p1
    L3_3 = L3_3(L4_4)
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L3_3
    L6_6 = "([^\\]+)$"
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = L4_4
    L7_7 = "(.-[^%.]+)"
    L5_5 = L5_5(L6_6, L7_7)
    L4_4 = L5_5
    L5_5 = ""
    L6_6 = #L4_4
    if L6_6 > 0 and L4_4 then
      L6_6 = L1_1[L4_4]
      if L6_6 == true then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = "job:"
      L7_7 = L4_4
      L8_8 = ";"
      L5_5 = L6_6 .. L7_7 .. L8_8
      L6_6 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tree\\"
      L7_7 = L4_4
      L6_6 = L6_6 .. L7_7
      L7_7 = sysio
      L7_7 = L7_7.RegOpenKey
      L8_8 = L6_6
      L7_7 = L7_7(L8_8)
      if L7_7 then
        L8_8 = sysio
        L8_8 = L8_8.GetRegValueAsString
        L9_9 = L7_7
        L10_10 = "Id"
        L8_8 = L8_8(L9_9, L10_10)
        if L8_8 ~= nil then
          L9_9 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\TaskCache\\Tasks\\"
          L10_10 = L8_8
          L9_9 = L9_9 .. L10_10
          L10_10 = sysio
          L10_10 = L10_10.RegOpenKey
          L11_11 = L9_9
          L10_10 = L10_10(L11_11)
          if L10_10 then
            L11_11 = sysio
            L11_11 = L11_11.GetRegValueAsBinary
            L12_12 = L10_10
            L13_13 = "Actions"
            L11_11 = L11_11(L12_12, L13_13)
            if L11_11 then
              L12_12 = #L11_11
              if L12_12 > 0 then
                L12_12 = 1
                L13_13 = mp
                L13_13 = L13_13.readu_u16
                L14_14 = L11_11
                L15_15 = L12_12
                L13_13 = L13_13(L14_14, L15_15)
                L12_12 = L12_12 + 2
                if L13_13 > 3 then
                  L14_14 = mp
                  L14_14 = L14_14.CLEAN
                  return L14_14
                end
                if L13_13 == 3 then
                  L2_2 = L2_2 + 1
                end
                L14_14 = mp
                L14_14 = L14_14.readu_u32
                L15_15 = L11_11
                L16_16 = L12_12
                L14_14 = L14_14(L15_15, L16_16)
                L12_12 = L12_12 + 4
                L15_15 = pcall
                L16_16 = L0_0
                L17_17 = L11_11
                L18_18 = L12_12
                L19_19 = L14_14
                L16_16 = L15_15(L16_16, L17_17, L18_18, L19_19)
                if not L15_15 then
                  L17_17 = mp
                  L17_17 = L17_17.CLEAN
                  return L17_17
                end
                L12_12 = L12_12 + L14_14
                L17_17 = L5_5
                L18_18 = "m_content:"
                L19_19 = L16_16
                L20_20 = ";"
                L5_5 = L17_17 .. L18_18 .. L19_19 .. L20_20
                if L16_16 == "Author" then
                  L2_2 = L2_2 + 1
                end
                while true do
                  L17_17 = #L11_11
                  L17_17 = L17_17 - 1
                  if L12_12 < L17_17 then
                    L17_17 = mp
                    L17_17 = L17_17.readu_u16
                    L18_18 = L11_11
                    L19_19 = L12_12
                    L17_17 = L17_17(L18_18, L19_19)
                    L12_12 = L12_12 + 2
                    if 26214 == L17_17 then
                      L12_12 = L12_12 + 4
                      L18_18 = mp
                      L18_18 = L18_18.readu_u32
                      L19_19 = L11_11
                      L20_20 = L12_12
                      L18_18 = L18_18(L19_19, L20_20)
                      L12_12 = L12_12 + 4
                      if L18_18 > 0 then
                        L19_19 = pcall
                        L20_20 = L0_0
                        L21_21 = L11_11
                        L20_20 = L19_19(L20_20, L21_21, L22_22, L23_23)
                        if not L19_19 then
                          L21_21 = mp
                          L21_21 = L21_21.CLEAN
                          return L21_21
                        end
                        L12_12 = L12_12 + L18_18
                        if L20_20 then
                          L21_21 = L5_5
                          L5_5 = L21_21 .. L22_22 .. L23_23 .. L24_24
                          if L2_2 == 2 then
                            L21_21 = sysio
                            L21_21 = L21_21.GetProcessFromFileName
                            L21_21 = L21_21(L22_22)
                            for L25_25, L26_26 in L22_22(L23_23) do
                              L27_27 = string
                              L27_27 = L27_27.format
                              L27_27 = L27_27("pid:%d,ProcessStart:%u", L26_26.pid, L26_26.starttime)
                              if L27_27 then
                                bm.request_SMS(L27_27, "m")
                                bm.add_action("SmsAsyncScanEvent", 1)
                              end
                            end
                          end
                        end
                      end
                      L19_19 = mp
                      L19_19 = L19_19.readu_u32
                      L20_20 = L11_11
                      L21_21 = L12_12
                      L19_19 = L19_19(L20_20, L21_21)
                      L12_12 = L12_12 + 4
                      if L19_19 > 0 then
                        L20_20 = pcall
                        L21_21 = L0_0
                        L21_21 = L20_20(L21_21, L22_22, L23_23, L24_24)
                        if not L20_20 then
                          return L22_22
                        end
                        L12_12 = L12_12 + L19_19
                        L25_25 = ";"
                        L5_5 = L22_22 .. L23_23 .. L24_24 .. L25_25
                      end
                      L20_20 = mp
                      L20_20 = L20_20.readu_u32
                      L21_21 = L11_11
                      L20_20 = L20_20(L21_21, L22_22)
                      L12_12 = L12_12 + 4
                      if L20_20 > 0 then
                        L21_21 = pcall
                        L25_25 = L20_20
                        L21_21 = L21_21(L22_22, L23_23, L24_24, L25_25)
                        if not L21_21 then
                          return L23_23
                        end
                        L12_12 = L12_12 + L20_20
                        L25_25 = L22_22
                        L26_26 = ";"
                        L5_5 = L23_23 .. L24_24 .. L25_25 .. L26_26
                      end
                      L21_21 = L5_5
                      L5_5 = L21_21 .. L22_22 .. L23_23 .. L24_24
                      L21_21 = mp
                      L21_21 = L21_21.set_mpattribute
                      L27_27 = L22_22(L23_23, L24_24)
                      L21_21(L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L22_22(L23_23, L24_24))
                    end
                  end
                end
                if L2_2 == 2 then
                  L17_17 = mp
                  L17_17 = L17_17.INFECTED
                  return L17_17
                end
              end
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
