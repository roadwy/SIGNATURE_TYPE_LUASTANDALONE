local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 then
  L2_2 = pcall
  L3_3 = bm
  L3_3 = L3_3.get_process_relationships
  L3_3 = L2_2(L3_3)
  if L2_2 then
    for _FORV_8_, _FORV_9_ in ipairs(L3_3) do
      if _FORV_9_.image_path ~= nil and (string.find(string.lower(_FORV_9_.image_path), "\\syswow64\\regsvr32.exe", 1, true) or string.find(string.lower(_FORV_9_.image_path), "\\syswow64\\rundll32.exe", 1, true)) and L1_1 ~= nil and L1_1.ppid ~= nil then
        bm.request_SMS(L1_1.ppid, "m")
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
