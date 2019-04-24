function check_errors ()
  lasterr()
  if ~isempty(lasterr())
    exit
  end
endfunction
