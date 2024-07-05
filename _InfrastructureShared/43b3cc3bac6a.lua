local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = bm
    L1_1 = L1_1.request_SMS
    L1_1(L0_0.ppid, "M")
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 == true then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.ppid
  if L1_1 ~= nil then
    bm.request_SMS(L1_1, "M")
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
