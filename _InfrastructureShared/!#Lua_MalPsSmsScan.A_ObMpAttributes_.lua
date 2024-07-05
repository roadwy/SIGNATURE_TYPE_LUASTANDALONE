local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_AMSI_OPERATION_PPID
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L1_1 = L1_1("SCRIPT:PS.Memset")
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L1_1 = L1_1("SCRIPT:PS.Gt0x1000")
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_mpattribute
      L1_1 = L1_1("SCRIPT:PS.AddType")
      if L1_1 then
        L1_1 = mp
        L1_1 = L1_1.get_mpattribute
        L1_1 = L1_1("SCRIPT:PS.Calloc")
        if L1_1 then
          L1_1 = mp
          L1_1 = L1_1.get_mpattribute
          L1_1 = L1_1("SCRIPT:PS.CreateThread")
          if L1_1 then
            L1_1 = mp
            L1_1 = L1_1.set_mpattribute
            L1_1("MpDisableCaching")
            L1_1 = {}
            table.insert(L1_1, L0_0)
            MpCommon.SetPersistContextNoPath("Lua:MalPsSmsScanAmsi", L1_1, 0)
          end
        end
      end
      L1_1 = MpCommon
      L1_1 = L1_1.RequestSmsOnProcess
      L1_1(L0_0, MpCommon.SMS_SCAN_HIGH)
    end
  else
    L1_1 = MpCommon
    L1_1 = L1_1.RequestSmsOnProcess
    L1_1(L0_0, MpCommon.SMS_SCAN_MED)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
