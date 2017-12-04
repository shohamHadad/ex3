file(REMOVE_RECURSE
  "ex3.pdb"
  "ex3"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ex3.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
