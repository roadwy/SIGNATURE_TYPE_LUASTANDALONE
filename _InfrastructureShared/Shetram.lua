local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
function L0_0(A0_6)
  local L1_7, L2_8, L3_9, L4_10, L5_11, L6_12, L7_13, L8_14, L9_15, L10_16, L11_17, L12_18, L13_19
  L1_7 = sysio
  L1_7 = L1_7.RegOpenKey
  L2_8 = A0_6
  L1_7 = L1_7(L2_8)
  L2_8 = {}
  L2_8.cpuoptimizer = true
  L2_8.checkcpu = true
  L2_8.radlover = true
  L2_8.cpuulover = true
  L2_8.superlover = true
  L2_8.flaterem = true
  L2_8.strdat = true
  L2_8.newageishere = true
  L2_8.cpunewage = true
  L2_8.antishortcutupdate = true
  L2_8.antiusbshortcut = true
  L2_8.winddowsupdate = true
  L2_8.winddowsupdater = true
  if L1_7 ~= nil then
    L3_9 = sysio
    L3_9 = L3_9.RegEnumValues
    L3_9 = L3_9(L4_10)
    for L7_13, L8_14 in L4_10(L5_11) do
      if L8_14 ~= nil then
        L9_15 = string
        L9_15 = L9_15.lower
        L9_15 = L9_15(L10_16)
        L9_15 = L2_8[L9_15]
        if L9_15 == true then
          L9_15 = string
          L9_15 = L9_15.lower
          L13_19 = L10_16(L11_17, L12_18)
          L9_15 = L9_15(L10_16, L11_17, L12_18, L13_19, L10_16(L11_17, L12_18))
          if L9_15 ~= nil then
            for L13_19 in L10_16(L11_17, L12_18) do
              if string.find(L13_19, "cmd.exe", 1, true) == nil and string.find(L13_19, "windows\\system32\\", 1, true) == nil and (string.find(L13_19, "cpufix.exe", 1, true) ~= nil or string.find(L13_19, "cpuchecker.exe", 1, true) ~= nil or string.find(L13_19, "streamer.exe", 1, true) ~= nil or string.find(L13_19, "radnewage.exe", 1, true) ~= nil or string.find(L13_19, "antiusb.exe", 1, true) ~= nil or string.find(L13_19, "cpuage.tnt", 1, true) ~= nil or string.find(L13_19, "cpuchecker.txt", 1, true) ~= nil or string.find(L13_19, "stream.txt", 1, true) ~= nil or string.find(L13_19, "newradage.tnt", 1, true) ~= nil or string.find(L13_19, "antiusbshortcut.zip", 1, true) ~= nil or string.find(L13_19, "winddowsupdater.exe", 1, true) ~= nil or string.find(L13_19, "winddowsupdater.zip", 1, true) ~= nil) and sysio.IsFileExists(L13_19) ~= nil then
                Remediation.BtrDeleteFile(L13_19)
              end
            end
          end
          L13_19 = L8_14
          L10_16(L11_17)
        end
      end
    end
  end
end
scanRunKeysForShetram = L0_0
L0_0 = string
L0_0 = L0_0.match
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L0_0 = scanRunKeysForShetram
  L0_0(L1_1)
  L0_0 = sysio
  L0_0 = L0_0.RegExpandUserKey
  L0_0 = L0_0(L1_1)
  for L4_4, L5_5 in L1_1(L2_2) do
    scanRunKeysForShetram(L5_5)
  end
end
