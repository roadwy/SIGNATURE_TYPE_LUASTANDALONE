local L0_0, L1_1, L2_2
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
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
  if string.sub(L2_2, -4) == ".exe" then
    if string.sub(L1_1, -16) == "\\appdata\\roaming" or string.sub(L1_1, -17) == "\\application data" then
      if string.len(L2_2) == 14 and string.sub(L2_2, 1, 6) == "guard-" then
        mp.set_mpattribute("Lua:FakePAVFileName.A")
      elseif string.len(L2_2) == 15 and string.sub(L2_2, 1, 7) == "protect" then
        mp.set_mpattribute("Lua:FakePAVFileName.B")
      elseif string.len(L2_2) == 13 and string.sub(L2_2, 1, 5) == "safe-" then
        mp.set_mpattribute("Lua:FakePAVFileName.C")
      elseif string.len(L2_2) == 12 and string.sub(L2_2, 1, 4) == "svc-" then
        mp.set_mpattribute("Lua:FakePAVFileName.D")
      end
    elseif L2_2 == "file.exe" and (string.sub(L1_1, -19) == "\\appdata\\local\\temp" or string.sub(L1_1, -20) == "\\local settings\\temp") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "wscript.exe" then
      mp.set_mpattribute("Lua:FakePAVFileName.E")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
