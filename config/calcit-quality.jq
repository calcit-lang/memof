# Each budget lists occurrence kind, intent, maximum count and allowed coverage.
def limits: {
  "memof.anchor/*anchor-states": ["schema-dynamic", "unresolved", 2, "partial"],
  "memof.anchor/anchor-state": ["schema-dynamic", "unresolved", 3, "partial"],
  "memof.once/*frame-keyed-call-caches": ["schema-dynamic", "unresolved", 1, "partial"],
  "memof.once/*keyed-call-caches": ["schema-dynamic", "unresolved", 1, "partial"],
  "memof.once/*once-caches": ["schema-dynamic", "unresolved", 2, "partial"],
  "memof.once/memof1-as": ["schema-dynamic", "intentional-macro-syntax", 1, "partial"],
  "memof.once/memof1-call": ["schema-dynamic", "intentional-open", 2, "full"],
  "memof.once/memof1-call-by": ["schema-dynamic", "intentional-open", 3, "full"],
  "memof.once/memoize-typed-singleton": ["unsafe-coerce", "explicit-unsafe", 1, "full"]
};

.[0].data.definitions as $weak
| .[1].data.definitions as $coverage
| .[2].data.definitions as $dataDynamic
| limits as $limits
| ($weak | type == "array") and ($coverage | type == "array")
  and all($weak[];
    $limits[.id] as $limit
    | .occurrences | length <= ($limit[2] // 0)
      and all(.[]; .kind == $limit[0] and .intent == $limit[1]))
  and all($coverage[];
    .coverage == "full" or (.coverage == "partial" and $limits[.id][3] == "partial"))
  and ($dataDynamic | type == "array")
  and all($dataDynamic[];
    .id == "memof.once/MemoEntry"
    and (.occurrences | type == "array")
    and (.occurrences | map(.detail) | group_by(.) | all(.[];
      length == 1 and (.[0] == "data-dynamic:struct-field:args" or .[0] == "data-dynamic:struct-field:value"))))
