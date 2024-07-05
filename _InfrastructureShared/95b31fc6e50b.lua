local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if mp.bitand(_FORV_6_.reason_ex, 1) == 1 and _FORV_6_.image_path ~= nil and string.find(string.lower(_FORV_6_.image_path), "\\svchost.exe", 1, true) and _FORV_6_.ppid ~= nil then
    bm.request_SMS(_FORV_6_.ppid, "M")
    bm.add_action("SmsAsyncScanEvent", 1000)
  end
end
return mp.INFECTED
