---
allowed-tools: Read, Grep, Glob, Bash
description: Systematic debugging with root cause analysis
argument-hint: <error-description-or-file>
---

## Debug: $ARGUMENTS

### Phase 1: Reproduce

1. **Get exact error**
   - Full stack trace
   - Error message
   - Reproduction steps

2. **Isolate the trigger**
   - What input causes it?
   - What state is required?
   - Is it consistent or intermittent?

### Phase 2: Locate

1. **Trace the call stack**
   - Start from error location
   - Work backwards through calls
   - Identify where state goes wrong

2. **Check recent changes**
   - `git log --oneline -20`
   - `git diff HEAD~5`
   - When did it last work?

3. **Search for patterns**
   - Similar errors in codebase?
   - Known issues in dependencies?

### Phase 3: Understand

1. **Form hypothesis**
   - What do you think is wrong?
   - What evidence supports this?

2. **Add instrumentation**
   - Strategic logging/prints
   - Debugger breakpoints
   - State inspection

3. **Test hypothesis**
   - Does the evidence confirm or refute?
   - If refuted, form new hypothesis

### Phase 4: Fix

1. **Minimal fix first**
   - Don't refactor while debugging
   - Fix the bug, nothing else

2. **Add regression test**
   - Test should fail without fix
   - Test should pass with fix

3. **Verify fix**
   - Original error resolved?
   - No new errors introduced?

### Output

Provide:
- Root cause explanation
- Fix implemented
- Test added
- Related areas to watch
