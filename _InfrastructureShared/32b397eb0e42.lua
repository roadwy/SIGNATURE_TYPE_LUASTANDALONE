local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.command_line)
    if string.sub(L1_1, -17) ~= "onedrivesetup.exe" then
      return mp.CLEAN
    end
    if L0_0 ~= nil and L0_0.ppid ~= nil then
      bm.request_SMS(L0_0.ppid, "m")
      bm.add_action("SmsAsyncScanEvent", 1)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
