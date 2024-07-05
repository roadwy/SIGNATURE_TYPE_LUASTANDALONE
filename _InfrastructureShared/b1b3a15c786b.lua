local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L1_1 = string
    L1_1 = L1_1.len
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 < 4096 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = MpCommon
    L1_1 = L1_1.GetPersistContextCountNoPath
    L2_2 = "Lua:MalPsSmsScanAmsi"
    L1_1 = L1_1(L2_2)
    if L1_1 > 0 then
      L1_1 = bm
      L1_1 = L1_1.get_current_process_startup_info
      L1_1 = L1_1()
      L2_2 = MpCommon
      L2_2 = L2_2.GetPersistContextNoPath
      L2_2 = L2_2("Lua:MalPsSmsScanAmsi")
      if L2_2 then
        for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
          if _FORV_7_ == L1_1.ppid then
            return mp.INFECTED
          end
        end
      end
    end
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
