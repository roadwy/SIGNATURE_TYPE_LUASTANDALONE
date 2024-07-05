local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ppid
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = isParentPackageManager
L1_1 = L1_1(L0_0.ppid, true)
if not L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = nil
    if this_sigattrlog[3].utf8p1 == nil then
      return mp.CLEAN
    end
    L1_1 = this_sigattrlog[3].utf8p1
    if L1_1 and string.match(L1_1, "/%.[^/]+$") then
      TrackPidAndTechniqueBM("BM", "T1059.004", "Execution_CommandandScriptingInterpreter_UnixShell_HiddenParent")
      reportRelatedBmHits()
      return mp.INFECTED
    end
  end
  L1_1 = AddResearchData
  L1_1("BM", true)
  L1_1 = reportRelatedBmHits
  L1_1()
  L1_1 = addRelatedProcess
  L1_1()
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
