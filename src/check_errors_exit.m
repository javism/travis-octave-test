function check_errors_exit ()
  lasterr()
  if ~isempty(lasterr())
    exit
  end
endfunction
