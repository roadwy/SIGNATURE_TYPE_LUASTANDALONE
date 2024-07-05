local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 20000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
elseif L0_0 == nil then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(bm.get_imagepath())
L0_0 = L0_0(L1_1, L1_1(bm.get_imagepath()))
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "^c:\\")
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\steam", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\fivem", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\game", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\temp\\evb", 1, true)
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(this_sigattrlog[1].utf8p2)
if string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "\\steamapps\\", 1, true) or string.find(L1_1, "\\action_", 1, true) or string.find(L1_1, "\\game", 1, true) then
  return mp.CLEAN
end
bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
bm.add_action("SmsAsyncScanEvent", 1000)
return mp.INFECTED
