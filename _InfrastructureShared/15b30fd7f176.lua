local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = pcall
    L2_2 = bm
    L2_2 = L2_2.get_process_relationships
    L3_3 = L0_0.ppid
    L3_3 = L1_1(L2_2, L3_3)
    if L1_1 then
      for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
        if _FORV_8_ ~= nil and _FORV_8_.ppid ~= nil then
          bm.request_SMS(_FORV_8_.ppid, "m")
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
