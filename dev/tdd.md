---
allowed-tools: Read, Write, Edit, Bash, Glob, Grep
description: Test-driven development cycle - Red, Green, Refactor
argument-hint: <feature-description>
---

## TDD Cycle for: $ARGUMENTS

### Phase 1: RED - Write Failing Tests

1. **Understand the requirement**
   - What behavior are we testing?
   - What are the edge cases?
   - What should fail? What should succeed?

2. **Write the test first**
   - Test file naming: `test_*.py`, `*.test.ts`, `*_test.go`
   - One test per behavior
   - Clear test names describing expected behavior
   - Use AAA pattern: Arrange, Act, Assert

3. **Run tests - confirm they fail**
   - Failure should be for the RIGHT reason (not syntax/import errors)

### Phase 2: GREEN - Minimal Implementation

1. **Write the simplest code that passes**
   - No optimization
   - No edge cases beyond what's tested
   - Just make it work

2. **Run tests - confirm they pass**

### Phase 3: REFACTOR - Improve Quality

1. **Clean up the implementation**
   - Remove duplication
   - Improve naming
   - Simplify logic
   - Extract helpers if needed

2. **Run tests - confirm they still pass**

3. **Clean up the tests**
   - Remove duplication
   - Improve readability

## Loop

Repeat the cycle for the next behavior until feature is complete.

**Key Principle:** Never write production code without a failing test first.
