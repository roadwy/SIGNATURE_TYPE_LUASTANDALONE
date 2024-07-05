local L0_0, L1_1, L2_2, L3_3
function L0_0(A0_4)
  return string.sub(A0_4, 4) == "video.exe" or string.sub(A0_4, 4) == "windows.exe" or string.sub(A0_4, 4) == "update.exe" or string.sub(A0_4, 4) == "system.exe" or string.sub(A0_4, 4) == "sock.exe" or string.sub(A0_4, 4) == "share.exe" or string.sub(A0_4, 4) == "setup.exe" or string.sub(A0_4, 4) == "serial.exe" or string.sub(A0_4, 4) == "mgr32.exe" or string.sub(A0_4, 4) == "error.exe" or string.sub(A0_4, 4) == "edit32.exe" or string.sub(A0_4, 4) == "crypt.exe" or string.sub(A0_4, 4) == "config.exe" or string.sub(A0_4, 4) == "common.exe" or string.sub(A0_4, 4) == "cap32.exe" or string.sub(A0_4, 4) == "boot.exe" or string.sub(A0_4, 4) == "bios.exe" or string.sub(A0_4, 4) == "audio.exe" or string.sub(A0_4, 4) == "api32.exe"
end
is_emotet_filename = L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILENAME
    L3_3 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
    L3_3 = L1_1
    L2_2 = L1_1.sub
    L2_2 = L2_2(L3_3, -4)
    if L2_2 == ".exe" then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = mp
      L3_3 = L3_3.get_contextdata
      L3_3 = L3_3(mp.CONTEXT_DATA_FILEPATH)
      L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILEPATH))
      L3_3 = L2_2.sub
      L3_3 = L3_3(L2_2, -42)
      if L3_3 ~= "\\local settings\\application data\\microsoft" then
        L3_3 = L2_2.sub
        L3_3 = L3_3(L2_2, -26)
      elseif L3_3 == "\\appdata\\roaming\\microsoft" then
        L3_3 = mp
        L3_3 = L3_3.get_contextdata
        L3_3 = L3_3(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
        if mp.bitand(L3_3, 7) ~= 0 then
          if is_emotet_filename(L1_1) then
            mp.set_mpattribute("Lua:EmotetFilenameAppdata.A")
          else
            mp.set_mpattribute("Lua:SuspiciousDropExe.A")
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
