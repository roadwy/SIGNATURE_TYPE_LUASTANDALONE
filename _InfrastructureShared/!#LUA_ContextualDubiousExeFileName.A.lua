local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 5242880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 == L2_2 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = {}
    L1_1["2014"] = true
    L1_1.deutschland = true
    L1_1.dezember = true
    L1_1.informationen = true
    L1_1.kontobewegung = true
    L1_1.november = true
    L1_1.online = true
    L1_1.order = true
    L1_1.purchase = true
    L1_1.rechnung = true
    L1_1.team = true
    L1_1.telekom = true
    L1_1.transaktions = true
    L1_1.vodafone = true
    L2_2 = 0
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L3_3 = L3_3(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    for _FORV_7_ in string.gmatch(L3_3, "%w+") do
      if L1_1[_FORV_7_] then
        L2_2 = L2_2 + 1
      end
    end
    if L2_2 >= 2 then
      return mp.LOWFI
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
