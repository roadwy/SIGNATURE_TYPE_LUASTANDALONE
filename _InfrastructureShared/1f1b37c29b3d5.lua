function is_in_program_files(A0_0)
  if A0_0.matched and A0_0.utf8p2 ~= nil then
    bm.add_related_file(mp.ContextualExpandEnvironmentVariables(A0_0.utf8p2))
    if string.match(A0_0.utf8p2, "%a:\\Program Files") ~= nil then
      return true
    elseif string.match(A0_0.utf8p2, "%%program_files%%\\") ~= nil then
      return true
    else
      return false
    end
  end
  return false
end
if is_in_program_files(this_sigattrlog[1]) then
  return mp.CLEAN
end
if is_in_program_files(this_sigattrlog[2]) then
  return mp.CLEAN
end
if is_in_program_files(this_sigattrlog[3]) then
  return mp.CLEAN
end
if is_in_program_files(this_sigattrlog[4]) then
  return mp.CLEAN
end
return mp.INFECTED
