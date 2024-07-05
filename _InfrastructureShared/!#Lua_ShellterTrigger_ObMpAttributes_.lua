local L0_0
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.packed
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.no_exception
    if L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.no_exports
      if L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.no_security
        if L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.x86_image
          if L0_0 then
            L0_0 = peattributes
            L0_0 = L0_0.suspicious_image_version
            if L0_0 then
              L0_0 = peattributes
              L0_0 = L0_0.dt_error_heur_exit_criteria
            end
          end
        end
      end
    end
  end
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 3145728 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FULL))
if string.find(L0_0, "\\windows\\", 1, true) or string.find(L0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
if not mp.get_mpattribute("pea_enable_vmm_grow") or not mp.get_mpattribute("pea_deep_analysis") then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  pe.reemulate()
end
return mp.CLEAN
