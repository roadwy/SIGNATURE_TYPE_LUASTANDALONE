local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(L1_1)
      L1_1 = L2_2
      if L1_1 == "msiexec.exe" then
        L2_2 = mp
        L2_2 = L2_2.get_contextdata
        L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
        if L2_2 then
          L2_2 = string.lower(L2_2)
          if L2_2:find("^kb[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]?[0-9]?%.exe$") == 1 then
            mp.set_mpattribute("Lua:ContextualDropMsiexecKB.A")
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
