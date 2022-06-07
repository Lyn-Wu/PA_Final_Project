# May Safe
```
[INFO] Parsing target 'riscv'
[INFO] Initialization.....Done
[INFO] Create call graph.....Done

[INFO] Graph info:
[INFO] ===========
[INFO] Total node count: 16
[INFO] Total edge count: 17
[INFO] Indirect function call: 9

[INFO] Start stack analysis.....Done
[INFO] Statistics in progress.....Done
[INFO] Result: 
[INFO] ==========
[INFO] Max stack size: 1024 Bytes
[INFO] Status: May safe
```

# Cycle Found
```
[INFO] Parsing target 'riscv'
[INFO] Initialization.....Done
[INFO] Create call graph.....Done

[INFO] Graph info:
[INFO] ===========
[INFO] Total node count: 17
[INFO] Total edge count: 19
[INFO] Indirect function call: 9

[INFO] Start stack analysis.....Done
[INFO] Statistics in progress.....Done
[INFO] Result: 
[INFO] ==========
[INFO] Max stack size: 1024 Bytes
[INFO] Status: Cycle found
```

# Stack Overflow
```
[INFO] Parsing target 'riscv'
[INFO] Initialization.....Done
[INFO] Create call graph.....Done

[INFO] Graph info:
[INFO] ===========
[INFO] Total node count: 16
[INFO] Total edge count: 17
[INFO] Indirect function call: 9

[INFO] Start stack analysis.....Done
[INFO] Statistics in progress.....Done
[INFO] Result: 
[INFO] ==========
[INFO] Max stack size: 10 Bytes
[INFO] Status: Overflow
```