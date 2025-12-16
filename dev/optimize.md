---
allowed-tools: Read, Grep, Glob, Bash
description: Performance analysis and optimization recommendations
argument-hint: <file-or-function>
---

## Optimize: $ARGUMENTS

### Phase 1: Measure First

**Do not optimize without profiling.**

1. **Identify metrics**
   - Response time / latency
   - Throughput
   - Memory usage
   - CPU usage

2. **Establish baseline**
   - Current performance numbers
   - What's acceptable? What's the target?

3. **Profile**
   - Python: `cProfile`, `line_profiler`
   - Node: `--prof`, Chrome DevTools
   - Go: `pprof`
   - General: time commands, APM tools

### Phase 2: Identify Bottlenecks

Look for:

**Algorithmic Issues**
- O(n²) or worse operations
- Unnecessary iterations
- Repeated calculations

**I/O Bottlenecks**
- N+1 database queries
- Unbatched API calls
- Synchronous blocking operations

**Memory Issues**
- Large object allocations in loops
- Memory leaks
- Unnecessary copies

**Caching Opportunities**
- Repeated expensive computations
- Stable external data
- Session/request-scoped data

### Phase 3: Optimize

Priority order:
1. **Algorithm improvements** - biggest wins
2. **Reduce I/O** - batching, caching
3. **Parallelize** - async, concurrent
4. **Micro-optimizations** - last resort

### Phase 4: Verify

1. **Re-measure** - Did it actually improve?
2. **Test** - Behavior unchanged?
3. **Document** - Why was this optimization made?

**Rule:** Premature optimization is the root of all evil. Measure first.
