local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L0_0 = L1_1.utf8p1
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, -4)
  L2_2 = "|.asp|aspx|ashx|asmx|"
  if string.find(L2_2, L1_1, 1, true) == nil then
    return mp.CLEAN
  end
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  {
    "w3wp.exe",
    "-ap \"msexchange"
  }
}
if not checkParentCmdline(L1_1.ppid, L2_2, 5) then
  return mp.CLEAN
end
bm.add_related_file(L0_0)
return mp.INFECTED
