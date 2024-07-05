local L0_0
L0_0 = peattributes
L0_0 = L0_0.suspicious_heap_size
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.suspicious_linker_version
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.suspicious_image_version
    if not L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.suspicious_os_version
      if not L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.suspicious_timestamp
        if not L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.suspicious_section_vsize
        end
      end
    end
  end
end
if L0_0 then
  pe.set_peattribute("hstr_exhaustive", true)
  mp.set_mpattribute("attrmatch_rescan_psif")
  return mp.INFECTED
end
return mp.CLEAN
