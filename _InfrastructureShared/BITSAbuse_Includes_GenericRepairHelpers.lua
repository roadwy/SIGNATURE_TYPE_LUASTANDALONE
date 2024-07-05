local L1_0
function L1_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15, L15_16, L16_17, L17_18, L18_19, L19_20, L20_21, L21_22, L22_23, L23_24, L24_25, L25_26
  L0_1 = MpCommon
  L0_1 = L0_1.ExpandEnvironmentVariables
  L1_2 = "%ProgramData%"
  L0_1 = L0_1(L1_2)
  L1_2 = sysio
  L1_2 = L1_2.IsFileExists
  L2_3 = L0_1
  L3_4 = "\\microsoft\\network\\downloader\\qmgr.db"
  L2_3 = L2_3 .. L3_4
  L1_2 = L1_2(L2_3)
  if L1_2 == nil then
    L1_2 = sysio
    L1_2 = L1_2.IsFileExists
    L2_3 = L0_1
    L3_4 = "\\microsoft\\network\\downloader\\qmgr0.dat"
    L2_3 = L2_3 .. L3_4
    L1_2 = L1_2(L2_3)
  elseif L1_2 ~= nil then
    L1_2 = sysio
    L1_2 = L1_2.EnumerateBitsJobs
    L1_2 = L1_2()
    if L1_2 == nil then
      return
    end
    L2_3 = {L3_4}
    L3_4 = "sonyerrorreport"
    L3_4 = {L4_5}
    L4_5 = "errorreportclient.exe"
    L4_5 = {
      L5_6,
      L6_7,
      L7_8,
      L8_9
    }
    L5_6 = "windowsimages"
    L6_7 = "windowsbackup"
    L5_6 = {
      L6_7,
      L7_8,
      L8_9,
      L9_10,
      L10_11
    }
    L6_7 = "footballtimes"
    L10_11 = "upnpdiscover"
    L6_7 = {
      L7_8,
      L8_9,
      L9_10
    }
    for L10_11, L11_12 in L7_8(L8_9) do
      L12_13 = string
      L12_13 = L12_13.lower
      L13_14 = L11_12.JobName
      L12_13 = L12_13(L13_14)
      if L12_13 == "" or L12_13 == nil then
        return
      end
      L13_14 = string
      L13_14 = L13_14.lower
      L13_14 = L13_14(L14_15)
      if L13_14 == "" or L13_14 == nil then
        return
      end
      for L17_18 = 1, #L2_3 do
        L20_21 = L2_3[L17_18]
        L21_22 = 1
        L22_23 = true
        if L18_19 ~= nil then
          return
        end
      end
      for L17_18 = 1, #L3_4 do
        L20_21 = L3_4[L17_18]
        L21_22 = 1
        L22_23 = true
        if L18_19 ~= nil then
          return
        end
      end
      for L20_21 = 1, #L4_5 do
        L21_22 = string
        L21_22 = L21_22.find
        L22_23 = L12_13
        L21_22 = L21_22(L22_23, L23_24, L24_25, L25_26)
        if L21_22 ~= nil then
          break
        end
      end
      if L17_18 ~= nil then
        L20_21 = L11_12.JobId
        L21_22 = 4
        L20_21 = string
        L20_21 = L20_21.byte
        L21_22 = L11_12.JobId
        L22_23 = 3
        L20_21 = L20_21(L21_22, L22_23)
        L21_22 = string
        L21_22 = L21_22.byte
        L22_23 = L11_12.JobId
        L21_22 = L21_22(L22_23, L23_24)
        L22_23 = string
        L22_23 = L22_23.byte
        L22_23 = L22_23(L23_24, L24_25)
        L20_21 = L17_18
        L21_22 = 3345
        L22_23 = false
        L18_19(L19_20, L20_21, L21_22, L22_23, L23_24)
      end
      if L17_18 == nil then
        return
      end
      for L20_21, L21_22 in L17_18(L18_19) do
        L22_23 = string
        L22_23 = L22_23.lower
        L22_23 = L22_23(L23_24)
        if L14_15 == true then
          for _FORV_26_ = 1, L6_7 do
            if string.find(L22_23, L6_7[_FORV_26_], 1, true) ~= nil and string.find(L22_23, L6_7[_FORV_26_], 1, true) == 1 then
              break
            end
          end
        end
        if L16_17 == true then
          for _FORV_27_ = 1, #L5_6 do
            if string.find(L23_24, L5_6[_FORV_27_], 1, true) ~= nil then
              break
            end
          end
        end
        if L25_26 == L24_25 then
          if L25_26 == nil then
            if L25_26 == nil then
              if L25_26 == nil then
                if L25_26 == nil then
                end
              end
            elseif L25_26 ~= nil then
              MpDetection.ReportResource("bitsjob", L25_26, 3420, false, false)
            end
          end
        end
      end
      if L18_19 == L17_18 and L14_15 == true and L15_16 == true and L16_17 == true then
        L20_21 = string
        L20_21 = L20_21.byte
        L21_22 = L11_12.JobId
        L22_23 = 4
        L20_21 = L20_21(L21_22, L22_23)
        L21_22 = string
        L21_22 = L21_22.byte
        L22_23 = L11_12.JobId
        L21_22 = L21_22(L22_23, L23_24)
        L22_23 = string
        L22_23 = L22_23.byte
        L22_23 = L22_23(L23_24, L24_25)
        L20_21 = "bitsjob"
        L21_22 = L18_19
        L22_23 = 3482
        L19_20(L20_21, L21_22, L22_23, L23_24, L24_25)
      end
    end
  end
end
Infrastructure_ScanBITSJobs = L1_0
