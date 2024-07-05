local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L1_1 = L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
    L1_1 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH))
    if string.lower(string.sub(L0_0, 1, 11)) ~= "\\\\tsclient\\" then
      return mp.CLEAN
    end
    mp.set_mpattribute("Lua:RDPProcExec")
    if string.lower(L1_1) == "worker.exe" then
      mp.set_mpattribute("Lua:SamSamWorker")
      return mp.INFECTED
    end
    if ({
      ["kali"] = 1,
      ["kalilinux"] = 1,
      ["pencha"] = 1,
      ["sila"] = 1,
      ["pendekar"] = 1,
      ["pende5"] = 1,
      ["b\\sqll"] = 2,
      ["b\\sql"] = 2,
      ["b\\01"] = 2,
      ["b\\1"] = 2
    })[string.lower(string.sub(L0_0, 12, 20))] == 1 then
      mp.set_mpattribute("Lua:SamSamMachine")
      return mp.INFECTED
    elseif ({
      ["kali"] = 1,
      ["kalilinux"] = 1,
      ["pencha"] = 1,
      ["sila"] = 1,
      ["pendekar"] = 1,
      ["pende5"] = 1,
      ["b\\sqll"] = 2,
      ["b\\sql"] = 2,
      ["b\\01"] = 2,
      ["b\\1"] = 2
    })[string.lower(string.sub(L0_0, 12, 20))] == 2 then
      mp.set_mpattribute("Lua:SamSamPpl")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
