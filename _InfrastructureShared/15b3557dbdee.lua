local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.command_line)
    if L1_1 ~= nil and string.sub(L1_1, -1) == "\"" then
      if string.find(L1_1, "\\program files (x86)\\", 1, true) or string.find(L1_1, "\\program files\\", 1, true) or string.find(L1_1, "/n /s /i:", 1, true) or string.find(L1_1, "/u ", 1, true) or string.find(L1_1, "qqpcmgr", 1, true) or string.find(L1_1, "farmakonet sql", 1, true) or string.find(L1_1, "droidcamfilter32.ax", 1, true) or string.find(L1_1, "browserengine.d11", 1, true) then
        return mp.CLEAN
      end
      if string.sub(L1_1, -4, -2) == ".ax" then
        return mp.CLEAN
      end
      if string.sub(L1_1, -5, -2) ~= ".dll" and string.sub(L1_1, -5, -2) ~= ".ocx" and string.sub(L1_1, -5, -2) ~= ".exe" and string.sub(L1_1, -5, -2) ~= ".cpl" and string.sub(L1_1, -5, -2) ~= ".spi" and string.sub(L1_1, -5, -2) ~= ".tlb" then
        bm.request_SMS(L0_0.ppid, "m")
        bm.add_action("SmsAsyncScanEvent", 1)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
