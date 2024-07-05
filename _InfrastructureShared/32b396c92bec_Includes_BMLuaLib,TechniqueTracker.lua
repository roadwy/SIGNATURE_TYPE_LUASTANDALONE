local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  bm.trigger_sig(L0_0, "FTPStoreParent", mp.GetParentProcInfo().ppid)
end
return mp.INFECTED
