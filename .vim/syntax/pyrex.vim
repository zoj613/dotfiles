" addtional syntax highlighting for pyrex/cython files
syn keyword pyrexStructure	fused
syn keyword pyrexType		bint const
syn keyword pyrexAccess		gil nogil except noexcept inline
syn keyword pyrexNull       NULL

syn match   pyrexDirective      display   '\<cython: .*' contains=pyrexDirectiveTerms containedin=pythonComment
syn keyword pyrexDirectiveTerms contained boundscheck wraparound initializedcheck
syn keyword pyrexDirectiveTerms contained nonecheck overflowcheck overflowcheck.fold
syn keyword pyrexDirectiveTerms contained embedsignature cdivision cdivision_warnings
syn keyword pyrexDirectiveTerms contained always_allow_keywords profile linetrace
syn keyword pyrexDirectiveTerms contained infer_types language_level
syn keyword pyrexDirectiveTerms contained c_string_type c_string_encoding
syn keyword pyrexDirectiveTerms contained type_version_tag unraisable_tracebacks

highlight default link pyrexDirective       pythonComment
highlight default link pyrexDirectiveTerm   Define
highlight default link pyrexNull            pythonBuiltin 
