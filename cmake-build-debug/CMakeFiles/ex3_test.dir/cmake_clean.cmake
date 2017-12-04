file(REMOVE_RECURSE
  "ex3_test.pdb"
  "ex3_test"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ex3_test.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
