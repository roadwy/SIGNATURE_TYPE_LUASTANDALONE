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
  L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
  L2_2 = mp
  L2_2 = L2_2.getfilesize
  L2_2 = L2_2()
  if L2_2 == 81 then
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L1_1, -3)
    if L2_2 == ".ph" then
      L2_2 = mp
      L2_2 = L2_2.set_mpattribute
      L2_2("Lua:SefnitConfig2")
    end
  else
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if (string.sub(L2_2, -27) == "\\application policy service" or string.sub(L2_2, -30) == "\\windows internet name service") and (string.sub(L1_1, -4) == ".exe" or string.sub(L1_1, -4) == ".dll") then
      mp.set_mpattribute("Lowfi:Lua:SefnitFilenameTorComponent")
    end
    if string.sub(L2_2, -5) == "\\dfrg" and L1_1 == "runner.exe" then
      mp.set_mpattribute("Lowfi:Lua:TrojanSefnitBitcoinMining")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 == 81 then
  L1_1 = headerpage
  L1_1 = L1_1[2]
  if L1_1 == 42 then
    L1_1 = headerpage
    L1_1 = L1_1[3]
    if L1_1 == 26 then
      L1_1 = headerpage
      L1_1 = L1_1[4]
      if L1_1 == 175 then
        L1_1 = headerpage
        L1_1 = L1_1[5]
      end
    end
  else
    if L1_1 ~= 220 then
      L1_1 = headerpage
      L1_1 = L1_1[2]
      if L1_1 == 225 then
        L1_1 = headerpage
        L1_1 = L1_1[3]
        if L1_1 == 58 then
          L1_1 = headerpage
          L1_1 = L1_1[4]
          if L1_1 == 192 then
            L1_1 = headerpage
            L1_1 = L1_1[5]
          end
        end
      end
  end
  elseif L1_1 == 106 then
    L1_1 = mp
    L1_1 = L1_1.crc32
    L2_2 = 0
    L1_1 = L1_1(L2_2, headerpage, 2, 64)
    if L1_1 == 1980615234 then
      L2_2 = mp
      L2_2 = L2_2.INFECTED
      return L2_2
    elseif L1_1 == 2557802102 then
      L2_2 = mp
      L2_2 = L2_2.INFECTED
      return L2_2
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
