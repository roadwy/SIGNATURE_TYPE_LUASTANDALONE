local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(L0_0, "windows\\system32\\svchost.exe", 1, true) or string.find(L0_0, "windows\\system32\\dllhost.exe", 1, true) or string.find(L0_0, "\\sechealthui.exe", 1, true) or string.find(L0_0, "windows\\system32\\werfault.exe", 1, true)) then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
