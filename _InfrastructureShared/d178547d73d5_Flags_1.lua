if mp.HSTR_WEIGHT >= 18 or mp.HSTR_WEIGHT == 17 and hstrlog[5].hitcount >= 4 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT == 17 then
  return mp.SUSPICIOUS
end
if not mp.get_mpattribute("pea_enable_vmm_grow") or not mp.get_mpattribute("do_exhaustivehstr_rescan") or not mp.get_mpattribute("pea_deep_analysis") then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  mp.set_mpattribute("LoD:VirTool:Win32/Obfuscator.ADB")
  pe.reemulate()
end
return mp.LOWFI
